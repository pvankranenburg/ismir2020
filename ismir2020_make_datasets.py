from itertools import groupby, zip_longest
from fractions import Fraction
from random import sample
import json

import pandas as pd
import numpy as np
import music21 as m21
from music21.meter import TimeSignatureException
m21.humdrum.spineParser.flavors['JRP'] = True
from collections import defaultdict


#song has no meter
class UnknownPGramType(Exception):
    def __init__(self, arg):
        self.arg = arg
    def __str__(self):
        return f"Unknown pgram type: {self.arg}."

#compute features:

def compute_completesmeasure_phrase(seq, ix, start_ix):
    endpos = Fraction(seq['features']['beatinphrase'][ix]) - \
             Fraction(seq['features']['beatinphrase'][start_ix]) + \
             Fraction(seq['features']['IOI_beatfraction'][ix])
    return endpos % seq['features']['beatspermeasure'][ix] == 0

def compute_completesbeat_phrase(seq, ix, start_ix):
    endpos = Fraction(seq['features']['beatinphrase'][ix]) - \
             Fraction(seq['features']['beatinphrase'][start_ix]) + \
             Fraction(seq['features']['IOI_beatfraction'][ix])
    return endpos % 1 == 0

def compute_completesmeasure_song(seq, ix):
    endpos = Fraction(seq['features']['beatinphrase'][ix]) - \
             Fraction(seq['features']['beatinphrase'][0]) + \
             Fraction(seq['features']['IOI_beatfraction'][ix])
    return endpos % seq['features']['beatspermeasure'][ix] == 0

def compute_completesbeat_song(seq, ix):
    endpos = Fraction(seq['features']['beatinphrase'][ix]) - \
             Fraction(seq['features']['beatinphrase'][0]) + \
             Fraction(seq['features']['IOI_beatfraction'][ix])
    return endpos % 1 == 0


#extract IOI in units of beat
#IOI_beatfraction[i] is IOI from start of ith note till start of (i+1)th note
#for last note: beatfraction is taken
#Also to be interpreted as duration of note + duration of following rests (except for rests at end of melody)
#
#extract beats per measure
def extractFeatures(seq_iter, vocalfeatures=True):
    count = 0
    for seq in seq_iter:
        count += 1
        if count % 100 == 0:
            print(count, end=' ')
        pairs = zip(seq['features']['beatinsong'],seq['features']['beatinsong'][1:]) #this possibly includes rests
        IOI_beatfraction = [Fraction(o[1])-Fraction(o[0]) for o in pairs]
        IOI_beatfraction = [str(bf) for bf in IOI_beatfraction] + [seq['features']['beatfraction'][-1]]
        seq['features']['IOI_beatfraction'] = IOI_beatfraction

        beatspermeasure = [m21.meter.TimeSignature(ts).beatCount for ts in seq['features']['timesignature']]
        seq['features']['beatspermeasure'] = beatspermeasure
        
        phrasepos = seq['features']['phrasepos']
        phrasestart_ix=[0]*len(phrasepos)
        for ix in range(1,len(phrasestart_ix)):
            if phrasepos[ix] < phrasepos[ix-1]:
                phrasestart_ix[ix] = ix
            else:
                phrasestart_ix[ix] = phrasestart_ix[ix-1]
        seq['features']['phrasestart_ix'] = phrasestart_ix
        
        endOfPhrase = [x[1]<x[0] for x in zip(phrasepos, phrasepos[1:])] + [True]
        seq['features']['endOfPhrase'] = endOfPhrase
        
        cm_p = [compute_completesmeasure_phrase(seq, ix, phrasestart_ix[ix]) for ix in range(len(phrasepos))]
        cb_p = [compute_completesbeat_phrase(seq, ix, phrasestart_ix[ix]) for ix in range(len(phrasepos))]

        cm_s = [compute_completesmeasure_song(seq, ix) for ix in range(len(phrasepos))]
        cb_s = [compute_completesbeat_song(seq, ix) for ix in range(len(phrasepos))]
        
        seq['features']['completesmeasure_phrase'] = cm_p
        seq['features']['completesbeat_phrase'] = cb_p

        seq['features']['completesmeasure_song'] = cm_s
        seq['features']['completesbeat_song'] = cb_s
        
        if vocalfeatures:
            #move lyric features to end of melisma:
            #rhymes, rhymescontentwords, wordstress, noncontentword, wordend
            #and compute rhyme_noteoffset and rhyme_beatoffset
            if 'melismastate' in seq['features'].keys(): #vocal?

                lyrics = seq['features']['lyrics']
                phoneme = seq['features']['phoneme']
                melismastate = seq['features']['melismastate']
                rhymes = seq['features']['rhymes']
                rhymescontentwords = seq['features']['rhymescontentwords']
                wordend = seq['features']['wordend']
                noncontentword = seq['features']['noncontentword']
                wordstress = seq['features']['wordstress']

                rhymes_endmelisma, rhymescontentwords_endmelisma = [], []
                wordend_endmelisma, noncontentword_endmelisma, wordstress_endmelisma = [], [], []
                lyrics_endmelisma, phoneme_endmelisma = [], []

                from_ix = 0
                inmelisma = False
                for ix in range(len(phrasepos)):
                    if melismastate[ix] == 'start':
                        from_ix = ix
                        inmelisma = True
                    if melismastate[ix] == 'end':
                        if not inmelisma:
                            from_ix = ix
                        inmelisma = False
                        rhymes_endmelisma.append(rhymes[from_ix])
                        rhymescontentwords_endmelisma.append(rhymescontentwords[from_ix])
                        wordend_endmelisma.append(wordend[from_ix])
                        noncontentword_endmelisma.append(noncontentword[from_ix])
                        wordstress_endmelisma.append(wordstress[from_ix])
                        lyrics_endmelisma.append(lyrics[from_ix])
                        phoneme_endmelisma.append(phoneme[from_ix])
                    else:
                        rhymes_endmelisma.append(False)
                        rhymescontentwords_endmelisma.append(False)
                        wordend_endmelisma.append(False)
                        noncontentword_endmelisma.append(False)
                        wordstress_endmelisma.append(False)
                        lyrics_endmelisma.append(None)
                        phoneme_endmelisma.append(None)

                seq['features']['rhymes_endmelisma'] = rhymes_endmelisma
                seq['features']['rhymescontentwords_endmelisma'] = rhymescontentwords_endmelisma
                seq['features']['wordend_endmelisma'] = wordend_endmelisma
                seq['features']['noncontentword_endmelisma'] = noncontentword_endmelisma
                seq['features']['wordstress_endmelisma'] = wordstress_endmelisma
                seq['features']['lyrics_endmelisma'] = lyrics_endmelisma
                seq['features']['phoneme_endmelisma'] = phoneme_endmelisma
                
                #compute rhyme_noteoffset and rhyme_beatoffset
                rhyme_noteoffset = [0]
                rhyme_beatoffset = [0.0]
                previous = 0
                previousbeat = float(Fraction(seq['features']['beatinsong'][0]))
                for ix in range(1,len(rhymescontentwords_endmelisma)):
                    if rhymescontentwords_endmelisma[ix-1]: #previous rhymes
                        previous = ix
                        previousbeat = float(Fraction(seq['features']['beatinsong'][ix]))
                    rhyme_noteoffset.append(ix - previous)
                    rhyme_beatoffset.append(float(Fraction(seq['features']['beatinsong'][ix])) - previousbeat)
                
                seq['features']['rhymescontentwords_noteoffset'] = rhyme_noteoffset
                seq['features']['rhymescontentwords_beatoffset'] = rhyme_beatoffset
                
            else:
                #vocal features requested, but not present.
                #skip melody
                continue
                #Or do this?
                if False:
                    length = len(phrasepos)
                    seq['features']['rhymes_endmelisma'] = [None] * length
                    seq['features']['rhymescontentwords_endmelisma'] = [None] * length
                    seq['features']['wordend_endmelisma'] = [None] * length
                    seq['features']['noncontentword_endmelisma'] = [None] * length
                    seq['features']['wordstress_endmelisma'] = [None] * length
                    seq['features']['lyrics_endmelisma'] = [None] * length
                    seq['features']['phoneme_endmelisma'] = [None] * length
            
        yield seq

class NoFeaturesError(Exception):
    def __init__(self, arg):
        self.args = arg

class NoTrigramsError(Exception):
    def __init__(self, arg):
        self.args = arg
    def __str__(self):
        return repr(self.value)

#endix is index of last note + 1
def computeSumFractions(fractions, startix, endix):
    res = 0.0
    for fr in fractions[startix:endix]:
        res = res + float(Fraction(fr))
    return res

#make groups of indices with the same successive pitch, but (optionally) not crossing phrase boundaries <- 20200331 crossing phrase boundaries should be allowed (contourfourth)
#returns tuples (ix of first note in group, ix of last note in group + 1)
#crossPhraseBreak=False splits on phrase break. N.B. Is Using GroundTruth!
def breakpitchlist(midipitch, phrase_ix, crossPhraseBreak=False):
    res = []
    if crossPhraseBreak:
        for _, g in groupby( enumerate(midipitch), key=lambda x:x[1]): 
            glist = list(g)
            res.append( (glist[0][0], glist[-1][0]+1) )
    else: #N.B. This uses the ground truth
        for _, g in groupby( enumerate(zip(midipitch,phrase_ix)), key=lambda x:(x[1][0],x[1][1])): 
            glist = list(g)
            res.append( (glist[0][0], glist[-1][0]+1) )
    return res

#True if no phrase end at first or second item (span) in the trigram
#trigram looks like ((8, 10), (10, 11), (11, 12))
def noPhraseBreak(tr, endOfPhrase):
    return not ( ( True in endOfPhrase[tr[0][0]:tr[0][1]] ) or \
                 ( True in endOfPhrase[tr[1][0]:tr[1][1]] ) )

#pgram_type : "pitch", "note"
def extractPgramsFromCorpus(corpus, pgram_type="pitch", startat=0, endat=None):
    pgrams = {}
    arfftype = {}
    for ix, seq in enumerate(corpus):
        if endat is not None:
            if ix >= endat:
                continue
        if ix < startat:
            continue
        if not ix%100:
            print(ix, end=' ')
        songid = seq['id']
        try:
            pgrams[songid], arfftype_new = extractPgramsFromMelody(seq, pgram_type=pgram_type)
            
            _,_ = addCrossRelations(pgrams[songid], arfftype_new, 'interval', newname='intervalsize', typeconv=lambda x: abs(int(x)))
            _,_ = addCrossRelations(pgrams[songid], arfftype_new, 'interval', newname='intervaldir', typeconv=np.sign)
            _,_ = addCrossRelations(pgrams[songid], arfftype_new, 'diatonicpitch', typeconv=int)
            _,_ = addCrossRelations(pgrams[songid], arfftype_new, 'VosHarmony', typeconv=int)
            _,_ = addCrossRelations(pgrams[songid], arfftype_new, 'beatstrength', typeconv=float)
            _,_ = addCrossRelations(pgrams[songid], arfftype_new, 'IOIbeatfraction', typeconv=float)
            if 'melismastate' in seq['features'].keys():
                _,_ = addCrossRelations(pgrams[songid], arfftype_new, 'wordstress', typeconv=int)
            if 'informationcontent' in seq['features'].keys():
                _,_ = addCrossRelations(pgrams[songid], arfftype_new, 'informationcontent', typeconv=float)
            
        except NoFeaturesError:
            print(songid, ": No features extracted.")
        except NoTrigramsError:
            print(songid, ": No trigrams extracted")
        #if ix > startat:
        #    if arfftype.keys() != arfftype_new.keys():
        #        print("Warning: Melodies have different feature sets.")
        #        print(list(zip_longest(arfftype.keys(), arfftype_new.keys())))
        
        #Keep largest set of features possible. N.B. no guarantee that all features in arfftype are in each sequence. 
        arfftype.update(arfftype_new)
    #concat melodies
    pgrams = pd.concat([v for v in pgrams.values()])
    
    return pgrams, arfftype


def extractPgramsFromMelody(seq, pgram_type, skipPhraseCrossing=False):
    # some aliases
    scaledegree = seq['features']['scaledegree']
    endOfPhrase = seq['features']['endOfPhrase']
    midipitch = seq['features']['midipitch']
    phrase_ix = seq['features']['phrase_ix']

    if pgram_type == "pitch":
        event_spans = breakpitchlist(midipitch, phrase_ix) #allow pitches to cross phrase break
    elif pgram_type == "note":
        event_spans = list(zip(range(len(scaledegree)),range(1,len(scaledegree)+1)))
    else:
        raise UnknownPGramType(pgram_type)

    # make trigram of spans
    event_spans = event_spans + [(None, None), (None, None)]
    pgram_span_ixs = list(zip(event_spans,event_spans[1:],event_spans[2:],event_spans[3:],event_spans[4:]))
    # If skipPhraseCrossing prune trigrams crossing phrase boundaries. WHY?
    #Why actually? e.g. kindr154 prhases of 2 pitches
    if skipPhraseCrossing:
        pgram_span_ixs = [ixs for ixs in pgram_span_ixs if noPhraseBreak(ixs,endOfPhrase)] 
    
    if len(pgram_span_ixs) == 0:
        raise NoTrigramsError(seq['id'])
    
    # create dataframe with pgram names as index
    pgram_ids = [seq["id"]+'_'+str(ixs[0][0]).zfill(3) for ixs in pgram_span_ixs]
    pgrams = pd.DataFrame(index=pgram_ids)
    pgrams['ix0_0'] = pd.array([ix[0][0] for ix in pgram_span_ixs], dtype="Int16")
    pgrams['ix0_1'] = pd.array([ix[0][1] for ix in pgram_span_ixs], dtype="Int16")
    pgrams['ix1_0'] = pd.array([ix[1][0] for ix in pgram_span_ixs], dtype="Int16")
    pgrams['ix1_1'] = pd.array([ix[1][1] for ix in pgram_span_ixs], dtype="Int16")
    pgrams['ix2_0'] = pd.array([ix[2][0] for ix in pgram_span_ixs], dtype="Int16")
    pgrams['ix2_1'] = pd.array([ix[2][1] for ix in pgram_span_ixs], dtype="Int16")
    pgrams['ix3_0'] = pd.array([ix[3][0] for ix in pgram_span_ixs], dtype="Int16")
    pgrams['ix3_1'] = pd.array([ix[3][1] for ix in pgram_span_ixs], dtype="Int16")
    pgrams['ix4_0'] = pd.array([ix[4][0] for ix in pgram_span_ixs], dtype="Int16")
    pgrams['ix4_1'] = pd.array([ix[4][1] for ix in pgram_span_ixs], dtype="Int16")

    #add tune family ids and songids
    pgrams['tunefamily'] = seq['tunefamily']
    pgrams['songid'] = seq['id']
    
    pgrams, arfftype = extractPgramFeatures(pgrams, seq)
    return pgrams, arfftype

def getBeatDuration(timesig):
    try:
        dur = float(m21.meter.TimeSignature(timesig).beatDuration.quarterLength)
    except TimeSignatureException:
        dur = float(Fraction(timesig) / Fraction('1/4'))
    return dur
        

def oneCrossRelation(el1, el2, typeconv):
    if pd.isna(el1) or pd.isna(el2):
        return np.nan
    return '-' if typeconv(el2) < typeconv(el1) else '=' if typeconv(el1) == typeconv(el2) else '+'

def addCrossRelations(pgrams, arfftype, featurename, newname=None, typeconv=int):
    postfixes = {
        1 : 'first',
        2 : 'second',
        3 : 'third',
        4 : 'fourth',
        5 : 'fifth'
    }
    if newname is None:
        newname = featurename
    for ix1 in range(1,6):
        for ix2 in range(ix1+1,6):
            featname = newname + postfixes[ix1] + postfixes[ix2]
            source = zip(pgrams[featurename + postfixes[ix1]], pgrams[featurename + postfixes[ix2]])
            pgrams[featname] = [oneCrossRelation(el1, el2, typeconv) for (el1, el2) in source]
            arfftype[featname] = '{-,=,+}'
    return pgrams, arfftype
    

def extractPgramFeatures(pgrams, seq):
    # vocal?
    vocal = False
    if 'melismastate' in seq['features'].keys():
        vocal = True
    
    arfftype = {}
    
    # some aliases
    scaledegree = seq['features']['scaledegree']
    beatstrength = seq['features']['beatstrength']
    diatonicpitch = seq['features']['diatonicpitch']
    midipitch = seq['features']['midipitch']
    chromaticinterval = seq['features']['chromaticinterval']
    timesig = seq['features']['timesignature']
    metriccontour = seq['features']['metriccontour']
    beatinsong = seq['features']['beatinsong']
    beatinphrase = seq['features']['beatinphrase']
    endOfPhrase = seq['features']['endOfPhrase']
    phrasestart_ix = seq['features']['phrasestart_ix']
    phrase_ix = seq['features']['phrase_ix']
    completesmeasure_song = seq['features']['completesmeasure_song']
    completesbeat_song = seq['features']['completesbeat_song']
    completesmeasure_phrase = seq['features']['completesmeasure_phrase']
    completesbeat_phrase = seq['features']['completesbeat_phrase']
    IOIbeatfraction = seq['features']['IOI_beatfraction']
    nextisrest = seq['features']['nextisrest']
    gpr2a = seq['features']['gpr2a_Frankland']
    gpr2b = seq['features']['gpr2b_Frankland']
    gpr3a = seq['features']['gpr3a_Frankland']
    gpr3d = seq['features']['gpr3d_Frankland']
    gprsum = seq['features']['gpr_Frankland_sum']
    pprox = seq['features']['pitchproximity']
    prev = seq['features']['pitchreversal']
    lbdmpitch = seq['features']['lbdm_spitch']
    lbdmioi = seq['features']['lbdm_sioi']
    lbdmrest = seq['features']['lbdm_srest']
    lbdm = seq['features']['lbdm_boundarystrength']
    
    if vocal:
        wordstress = seq['features']['wordstress_endmelisma']
        noncontentword = seq['features']['noncontentword_endmelisma']
        wordend = seq['features']['wordend_endmelisma']
        rhymescontentwords = seq['features']['rhymescontentwords_endmelisma']
        rhymescontentwords_noteoffset = seq['features']['rhymescontentwords_noteoffset'] 
        rhymescontentwords_beatoffset = seq['features']['rhymescontentwords_beatoffset'] 
        melismastate = seq['features']['melismastate']
    
    
    phrase_count = max(phrase_ix) + 1

    pgrams['scaledegreefirst']   = pd.array([scaledegree[int(ix)] for ix in pgrams['ix0_0']], dtype="Int16")
    pgrams['scaledegreesecond']  = pd.array([scaledegree[int(ix)] for ix in pgrams['ix1_0']], dtype="Int16")
    pgrams['scaledegreethird']   = pd.array([scaledegree[int(ix)] for ix in pgrams['ix2_0']], dtype="Int16")
    pgrams['scaledegreefourth']  = pd.array([scaledegree[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_0']], dtype="Int16")
    pgrams['scaledegreefifth']   = pd.array([scaledegree[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_0']], dtype="Int16")
    arfftype['scaledegreefirst']  = 'numeric'
    arfftype['scaledegreesecond'] = 'numeric'
    arfftype['scaledegreethird']  = 'numeric'
    arfftype['scaledegreefourth'] = 'numeric'
    arfftype['scaledegreefifth']  = 'numeric'
    
    pgrams['diatonicpitchfirst']   = pd.array([diatonicpitch[int(ix)] for ix in pgrams['ix0_0']], dtype="Int16")
    pgrams['diatonicpitchsecond']  = pd.array([diatonicpitch[int(ix)] for ix in pgrams['ix1_0']], dtype="Int16")
    pgrams['diatonicpitchthird']   = pd.array([diatonicpitch[int(ix)] for ix in pgrams['ix2_0']], dtype="Int16")
    pgrams['diatonicpitchfourth']  = pd.array([diatonicpitch[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_0']], dtype="Int16")
    pgrams['diatonicpitchfifth']   = pd.array([diatonicpitch[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_0']], dtype="Int16")
    arfftype['diatonicpitchfirst']  = 'numeric'
    arfftype['diatonicpitchsecond'] = 'numeric'
    arfftype['diatonicpitchthird']  = 'numeric'
    arfftype['diatonicpitchfourth'] = 'numeric'
    arfftype['diatonicpitchfifth']  = 'numeric'
    
    pgrams['midipitchfirst']  = pd.array([midipitch[int(ix)] for ix in pgrams['ix0_0']], dtype="Int16")
    pgrams['midipitchsecond'] = pd.array([midipitch[int(ix)] for ix in pgrams['ix1_0']], dtype="Int16")
    pgrams['midipitchthird']  = pd.array([midipitch[int(ix)] for ix in pgrams['ix2_0']], dtype="Int16")
    pgrams['midipitchfourth'] = pd.array([midipitch[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_0']], dtype="Int16")
    pgrams['midipitchfifth']  = pd.array([midipitch[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_0']], dtype="Int16")
    arfftype['midipitchfirst']  = 'numeric'
    arfftype['midipitchsecond'] = 'numeric'
    arfftype['midipitchthird']  = 'numeric'
    arfftype['midipitchfourth'] = 'numeric'
    arfftype['midipitchfifth']  = 'numeric'


    pgrams['intervalfirst']   = pd.array([chromaticinterval[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix0_0']], dtype="Int16")
    pgrams['intervalsecond']  = pd.array([chromaticinterval[int(ix)] for ix in pgrams['ix1_0']], dtype="Int16")
    pgrams['intervalthird']   = pd.array([chromaticinterval[int(ix)] for ix in pgrams['ix2_0']], dtype="Int16")
    pgrams['intervalfourth']  = pd.array([chromaticinterval[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_0']], dtype="Int16")
    pgrams['intervalfifth']   = pd.array([chromaticinterval[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_0']], dtype="Int16")
    arfftype['intervalfirst']  = 'numeric'
    arfftype['intervalsecond'] = 'numeric'
    arfftype['intervalthird']  = 'numeric'
    arfftype['intervalfourth'] = 'numeric'
    arfftype['intervalfifth']  = 'numeric'

    parsons = {-1:'-', 0:'=', 1:'+'}
    #intervalcontour is not a good feature. Pitchcontour would be better. This will be in the cross-relations
    #pgrams['intervalcontoursecond'] = [parsons[np.sign(int2 - int1)] if not pd.isna(int1) else np.nan for int1, int2 in \
    #                                   zip(pgrams['intervalfirst'],pgrams['intervalsecond'])]
    #pgrams['intervalcontourthird']  = [parsons[np.sign(int2 - int1)] for int1, int2 in \
    #                                   zip(pgrams['intervalsecond'],pgrams['intervalthird'])]
    #pgrams['intervalcontourfourth'] = [parsons[np.sign(int2 - int1)] if not pd.isna(int2) else np.nan for int1, int2 in \
    #                                   zip(pgrams['intervalthird'],pgrams['intervalfourth'])]
    #pgrams['intervalcontourfifth']  = [parsons[np.sign(int2 - int1)] if not pd.isna(int2) else np.nan for int1, int2 in \
    #                                   zip(pgrams['intervalfourth'],pgrams['intervalfifth'])]
    #arfftype['intervalcontoursecond'] = '{-,=,+}'
    #arfftype['intervalcontourthird']  = '{-,=,+}'
    #arfftype['intervalcontourfourth'] = '{-,=,+}'
    #arfftype['intervalcontourfifth']  = '{-,=,+}'

    #intervals of which second tone has center of gravity according to Vos 2002 + octave equivalents 
    VosCenterGravityASC  =  np.array([1, 5, 8]) 
    VosCenterGravityDESC =  np.array([-2, -4, -6, -7, -11])
    VosCenterGravity = list(VosCenterGravityDESC-24) + \
                       list(VosCenterGravityDESC-12) + \
                       list(VosCenterGravityDESC) + \
                       list(VosCenterGravityASC) + \
                       list(VosCenterGravityASC+12) + \
                       list(VosCenterGravityASC+24) 
    pgrams['VosCenterGravityfirst']  = [interval in VosCenterGravity if not pd.isna(interval) else np.nan for interval in pgrams['intervalfirst']]
    pgrams['VosCenterGravitysecond'] = [interval in VosCenterGravity for interval in pgrams['intervalsecond']]
    pgrams['VosCenterGravitythird']  = [interval in VosCenterGravity for interval in pgrams['intervalthird']]
    pgrams['VosCenterGravityfourth'] = [interval in VosCenterGravity if not pd.isna(interval) else np.nan for interval in pgrams['intervalfourth']]
    pgrams['VosCenterGravityfifth']  = [interval in VosCenterGravity if not pd.isna(interval) else np.nan for interval in pgrams['intervalfifth']]
    arfftype['VosCenterGravityfirst']  = '{True, False}'
    arfftype['VosCenterGravitysecond'] = '{True, False}'
    arfftype['VosCenterGravitythird']  = '{True, False}'
    arfftype['VosCenterGravityfourth'] = '{True, False}'
    arfftype['VosCenterGravityfifth']  = '{True, False}'

    VosHarmony = {
        0: 0,
        1: 2,
        2: 3,
        3: 4,
        4: 5,
        5: 6,
        6: 1,
        7: 6,
        8: 5,
        9: 4,
        10: 3,
        11: 2,
        12: 7 
    }
    #interval modulo one octave, but 0 only for absolute unison (Vos 2002, p.633)
    def vosint(intervals):
        return [((np.sign(i)*i-1)%12+1 if i!=0 else 0) if not pd.isna(i) else np.nan for i in intervals]    
    pgrams['VosHarmonyfirst']  = pd.array([VosHarmony[interval] if not pd.isna(interval) else np.nan for interval in vosint(pgrams['intervalfirst'])], dtype="Int16")
    pgrams['VosHarmonysecond'] = pd.array([VosHarmony[interval] for interval in vosint(pgrams['intervalsecond'])], dtype="Int16")
    pgrams['VosHarmonythird']  = pd.array([VosHarmony[interval] for interval in vosint(pgrams['intervalthird'])], dtype="Int16")
    pgrams['VosHarmonyfourth'] = pd.array([VosHarmony[interval] if not pd.isna(interval) else np.nan for interval in vosint(pgrams['intervalfourth'])], dtype="Int16")
    pgrams['VosHarmonyfifth']  = pd.array([VosHarmony[interval] if not pd.isna(interval) else np.nan for interval in vosint(pgrams['intervalfifth'])], dtype="Int16")
    arfftype['VosHarmonyfirst']  = 'numeric'
    arfftype['VosHarmonysecond'] = 'numeric'
    arfftype['VosHarmonythird']  = 'numeric'
    arfftype['VosHarmonyfourth'] = 'numeric'
    arfftype['VosHarmonyfifth']  = 'numeric'

    if 'informationcontent' in seq['features'].keys():
        informationcontent = seq['features']['informationcontent']

        pgrams['informationcontentfirst']  = [informationcontent[int(ix)] for ix in pgrams['ix0_0']]
        pgrams['informationcontentsecond'] = [informationcontent[int(ix)] for ix in pgrams['ix1_0']]
        pgrams['informationcontentthird']  = [informationcontent[int(ix)] for ix in pgrams['ix2_0']]
        pgrams['informationcontentfourth'] = [informationcontent[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_0']]
        pgrams['informationcontentfifth']  = [informationcontent[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_0']]
        arfftype['informationcontentfirst']  = 'numeric'
        arfftype['informationcontentsecond'] = 'numeric'
        arfftype['informationcontentthird']  = 'numeric'
        arfftype['informationcontentfourth'] = 'numeric'
        arfftype['informationcontentfifth']  = 'numeric'

    pgrams['contourfirst']  = [parsons[np.sign(i)] if not pd.isna(i) else np.nan for i in pgrams['intervalfirst']]
    pgrams['contoursecond'] = [parsons[np.sign(i)] for i in pgrams['intervalsecond']]
    pgrams['contourthird']  = [parsons[np.sign(i)] for i in pgrams['intervalthird']]
    pgrams['contourfourth'] = [parsons[np.sign(i)] if not pd.isna(i) else np.nan for i in pgrams['intervalfourth']]
    pgrams['contourfifth']  = [parsons[np.sign(i)] if not pd.isna(i) else np.nan for i in pgrams['intervalfifth']]
    arfftype['contourfirst']  = '{-,=,+}'
    arfftype['contoursecond'] = '{-,=,+}'
    arfftype['contourthird']  = '{-,=,+}'
    arfftype['contourfourth'] = '{-,=,+}'
    arfftype['contourfifth']  = '{-,=,+}'
    
    ###########################################3
    #derived features from Interval and Contour
    
    pgrams['registraldirectionchange'] = [cont_sec != cont_third for cont_sec, cont_third in \
                                            zip(pgrams['contoursecond'], pgrams['contourthird'])]
    arfftype['registraldirectionchange'] = '{True, False}'
    
    pgrams['largetosmall'] = [int_first >= 6 and int_second <=4 for int_first, int_second in \
                                zip(pgrams['intervalsecond'], pgrams['intervalthird'])]
    arfftype['largetosmall'] = '{True, False}'
    
    pgrams['contourreversal'] = [(i[0] == '-' and i[1] == '+') or (i[0]=='+' and i[1]=='-') \
                                   for i in zip(pgrams['contoursecond'], pgrams['contourthird'])]
    arfftype['contourreversal'] = '{True, False}'

    pgrams['isascending'] = \
        (pgrams['diatonicpitchfirst'] < pgrams['diatonicpitchsecond']) & \
        (pgrams['diatonicpitchsecond'] < pgrams['diatonicpitchthird'])
    arfftype['isascending'] = '{True, False}'

    pgrams['isdescending'] = \
        (pgrams['diatonicpitchfirst'] > pgrams['diatonicpitchsecond']) & \
        (pgrams['diatonicpitchsecond'] > pgrams['diatonicpitchthird'])
    arfftype['isdescending'] = '{True, False}'

    diat = pgrams[['diatonicpitchfirst','diatonicpitchsecond','diatonicpitchthird']].values
    pgrams['ambitus'] = diat.max(1) - diat.min(1)
    arfftype['ambitus'] = 'numeric'

    pgrams['containsleap'] = \
        (abs(pgrams['diatonicpitchsecond'] - pgrams['diatonicpitchfirst']) > 1) | \
        (abs(pgrams['diatonicpitchthird'] - pgrams['diatonicpitchsecond']) > 1)
    arfftype['containsleap'] = '{True, False}'
    
    ###########################################3

    pgrams['numberofnotesfirst']  = pd.array([ix2 - ix1 for ix1, ix2 in zip(pgrams['ix0_0'],pgrams['ix0_1'])], dtype="Int16")
    pgrams['numberofnotessecond'] = pd.array([ix2 - ix1 for ix1, ix2 in zip(pgrams['ix1_0'],pgrams['ix1_1'])], dtype="Int16")
    pgrams['numberofnotesthird']  = pd.array([ix2 - ix1 for ix1, ix2 in zip(pgrams['ix2_0'],pgrams['ix2_1'])], dtype="Int16")
    pgrams['numberofnotesfourth'] = pd.array([ix2 - ix1 if not pd.isna(ix1) else np.nan for ix1, ix2 in zip(pgrams['ix3_0'],pgrams['ix3_1'])], dtype="Int16")
    pgrams['numberofnotesfifth']  = pd.array([ix2 - ix1 if not pd.isna(ix1) else np.nan for ix1, ix2 in zip(pgrams['ix4_0'],pgrams['ix4_1'])], dtype="Int16")
    arfftype['numberofnotesfirst']  = 'numeric'
    arfftype['numberofnotessecond'] = 'numeric'
    arfftype['numberofnotesthird']  = 'numeric'
    arfftype['numberofnotesfourth'] = 'numeric'
    arfftype['numberofnotesfifth']  = 'numeric'
    
    if seq['freemeter']:
        pgrams['meternumerator']   = pd.array([np.nan for ix in pgrams['ix0_0']], dtype="Int16")
        pgrams['meterdenominator'] = pd.array([np.nan for ix in pgrams['ix0_0']], dtype="Int16")
    else:
        pgrams['meternumerator']   = pd.array([int(timesig[ix].split('/')[0]) for ix in pgrams['ix0_0']], dtype="Int16")
        pgrams['meterdenominator'] = pd.array([int(timesig[ix].split('/')[1]) for ix in pgrams['ix0_0']], dtype="Int16")
    arfftype['meternumerator']   = 'numeric'
    arfftype['meterdenominator'] = 'numeric'
    
    pgrams['nextisrestfirst']  = [nextisrest[ix-1] for ix in pgrams['ix0_1']]
    pgrams['nextisrestsecond'] = [nextisrest[ix-1] for ix in pgrams['ix1_1']]
    pgrams['nextisrestthird']  = [nextisrest[ix-1] for ix in pgrams['ix2_1']]
    pgrams['nextisrestfourth'] = [nextisrest[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]
    pgrams['nextisrestfifth']  = [nextisrest[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]
    arfftype['nextisrestfirst']  = '{True, False}'
    arfftype['nextisrestsecond'] = '{True, False}'
    arfftype['nextisrestthird']  = '{True, False}'
    arfftype['nextisrestfourth'] = '{True, False}'
    arfftype['nextisrestfifth']  = '{True, False}'
    
    pgrams['beatstrengthfirst']  = [beatstrength[int(ix)] for ix in pgrams['ix0_0']]
    pgrams['beatstrengthsecond'] = [beatstrength[int(ix)] for ix in pgrams['ix1_0']]
    pgrams['beatstrengththird']  = [beatstrength[int(ix)] for ix in pgrams['ix2_0']]
    pgrams['beatstrengthfourth'] = [beatstrength[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_0']]
    pgrams['beatstrengthfifth']  = [beatstrength[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_0']]
    arfftype['beatstrengthfirst']  = 'numeric'
    arfftype['beatstrengthsecond'] = 'numeric'
    arfftype['beatstrengththird']  = 'numeric'
    arfftype['beatstrengthfourth'] = 'numeric'
    arfftype['beatstrengthfifth']  = 'numeric'

    #these will be in crossrelations: beatstrengthfirstsecond, etc.
    #pgrams['metriccontourfirst']  = [metriccontour[int(ix)] for ix in pgrams['ix0_0']]
    #pgrams['metriccontoursecond'] = [metriccontour[int(ix)] for ix in pgrams['ix1_0']]
    #pgrams['metriccontourthird']  = [metriccontour[int(ix)] for ix in pgrams['ix2_0']]
    #pgrams['metriccontourfourth'] = [metriccontour[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_0']]
    #pgrams['metriccontourfifth']  = [metriccontour[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_0']]
    #arfftype['metriccontourfirst']  = '{-,=,+}'
    #arfftype['metriccontoursecond'] = '{-,=,+}'
    #arfftype['metriccontourthird']  = '{-,=,+}'
    #arfftype['metriccontourfourth'] = '{-,=,+}'
    #arfftype['metriccontourfifth']  = '{-,=,+}'
    
    pgrams['IOIbeatfractionfirst']  = [computeSumFractions(IOIbeatfraction, startix, endix) for \
                                         startix, endix in zip(pgrams['ix0_0'],pgrams['ix0_1'])]
    pgrams['IOIbeatfractionsecond'] = [computeSumFractions(IOIbeatfraction, startix, endix) for \
                                         startix, endix in zip(pgrams['ix1_0'],pgrams['ix1_1'])]
    pgrams['IOIbeatfractionthird']  = [computeSumFractions(IOIbeatfraction, startix, endix) for \
                                         startix, endix in zip(pgrams['ix2_0'],pgrams['ix2_1'])]
    pgrams['IOIbeatfractionfourth'] = [computeSumFractions(IOIbeatfraction, startix, endix) if not pd.isna(startix) else np.nan for \
                                         startix, endix in zip(pgrams['ix3_0'],pgrams['ix3_1'])]
    pgrams['IOIbeatfractionfifth']  = [computeSumFractions(IOIbeatfraction, startix, endix) if not pd.isna(startix) else np.nan for \
                                         startix, endix in zip(pgrams['ix4_0'],pgrams['ix4_1'])]
    arfftype['IOIbeatfractionfirst']  = 'numeric'
    arfftype['IOIbeatfractionsecond'] = 'numeric'
    arfftype['IOIbeatfractionthird']  = 'numeric'
    arfftype['IOIbeatfractionfourth'] = 'numeric'
    arfftype['IOIbeatfractionfifth']  = 'numeric'

    pgrams['durationcummulation'] = [((d2 > d1) and (d3 > d2)) for d1, d2, d3 in \
                                     zip(pgrams['IOIbeatfractionfirst'],pgrams['IOIbeatfractionsecond'],pgrams['IOIbeatfractionthird'])]
    arfftype['durationcummulation'] = '{True, False}'

    #these will be in crossrelation: IOIbeatfractionfirstsecond, etc.
    #pgrams['durationcontoursecond'] = [parsons[np.sign(dur2 - dur1)] for dur1, dur2 in \
    #                                   zip(pgrams['IOIbeatfractionfirst'],pgrams['IOIbeatfractionsecond'])]
    #pgrams['durationcontourthird']  = [parsons[np.sign(dur2 - dur1)] for dur1, dur2 in \
    #                                   zip(pgrams['IOIbeatfractionsecond'],pgrams['IOIbeatfractionthird'])]
    #pgrams['durationcontourfourth'] = [parsons[np.sign(dur2 - dur1)] if not pd.isna(dur2) else np.nan for dur1, dur2 in \
    #                                   zip(pgrams['IOIbeatfractionthird'],pgrams['IOIbeatfractionfourth'])]
    #pgrams['durationcontourfifth']  = [parsons[np.sign(dur2 - dur1)] if not pd.isna(dur2) else np.nan for dur1, dur2 in \
    #                                   zip(pgrams['IOIbeatfractionfourth'],pgrams['IOIbeatfractionfifth'])]
    #arfftype['durationcontoursecond'] = '{-,=,+}'
    #arfftype['durationcontourthird']  = '{-,=,+}'
    #arfftype['durationcontourfourth'] = '{-,=,+}'
    #arfftype['durationcontourfifth']  = '{-,=,+}'
        
    pgrams['onthebeatfirst']  = [Fraction(beatinsong[int(ix)]) % 1 == 0 for ix in pgrams['ix0_0']]
    pgrams['onthebeatsecond'] = [Fraction(beatinsong[int(ix)]) % 1 == 0 for ix in pgrams['ix1_0']]
    pgrams['onthebeatthird']  = [Fraction(beatinsong[int(ix)]) % 1 == 0 for ix in pgrams['ix2_0']]
    pgrams['onthebeatfourth'] = [Fraction(beatinsong[int(ix)]) % 1 == 0 if not pd.isna(ix) else np.nan for ix in pgrams['ix3_0']]
    pgrams['onthebeatfifth']  = [Fraction(beatinsong[int(ix)]) % 1 == 0 if not pd.isna(ix) else np.nan for ix in pgrams['ix4_0']]
    arfftype['onthebeatfirst']  = '{True, False}'
    arfftype['onthebeatsecond'] = '{True, False}'
    arfftype['onthebeatthird']  = '{True, False}'
    arfftype['onthebeatfourth'] = '{True, False}'
    arfftype['onthebeatfifth']  = '{True, False}'

    pgrams['completesmeasurephrase'] = [completesmeasure_phrase[ix-1] for ix in pgrams['ix2_1']]
    pgrams['completesmeasuresong']   = [completesmeasure_song[ix-1] for ix in pgrams['ix2_1']]
    pgrams['completesbeatphrase']    = [completesbeat_phrase[ix-1] for ix in pgrams['ix2_1']]
    pgrams['completesbeatsong']      = [completesbeat_song[ix-1] for ix in pgrams['ix2_1']]
    arfftype['completesmeasurephrase'] = '{True, False}'
    arfftype['completesmeasuresong']   = '{True, False}'
    arfftype['completesbeatphrase']    = '{True, False}'
    arfftype['completesbeatsong']      = '{True, False}'
    
    if 'grouper' in seq['features'].keys():
        grouper = seq['features']['grouper']

        pgrams['grouperfirst']  = [grouper[int(ix)] for ix in pgrams['ix0_0']]
        pgrams['groupersecond'] = [grouper[int(ix)] for ix in pgrams['ix1_0']]
        pgrams['grouperthird']  = [grouper[int(ix)] for ix in pgrams['ix2_0']]
        pgrams['grouperfourth'] = [grouper[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_0']]
        pgrams['grouperfifth']  = [grouper[int(ix)] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_0']]
        arfftype['grouperfirst']  = '{True, False}'
        arfftype['groupersecond'] = '{True, False}'
        arfftype['grouperthird']  = '{True, False}'
        arfftype['grouperfourth'] = '{True, False}'
        arfftype['grouperfifth']  = '{True, False}'

    
    #values for final note of third group
    pgrams['noteoffset'] = pd.array([(ix-1) - phrasestart_ix[(ix-1)] for ix in pgrams['ix2_1']], dtype="Int16")
    
    pgrams['beatoffset'] = [float(Fraction(beatinphrase[ix-1])) - \
                              float(Fraction(beatinphrase[phrasestart_ix[(ix-1)]])) \
                              for ix in pgrams['ix2_1']]
    arfftype['noteoffset'] = 'numeric'
    arfftype['beatoffset'] = 'numeric'
    
    pgrams['beatduration'] = [getBeatDuration(timesig[int(ix)]) for ix in pgrams['ix0_0']]
    pgrams['beatcount'] = pd.array([m21.meter.TimeSignature(timesig[int(ix)]).beatCount for ix in pgrams['ix0_0']], dtype="Int16")
    arfftype['beatduration'] = 'numeric'
    arfftype['beatcount'] = 'numeric'
        
    #get values for the last note!
    pgrams['gpr2afirst']  = [gpr2a[ix-1] for ix in pgrams['ix0_1']]
    pgrams['gpr2asecond'] = [gpr2a[ix-1] for ix in pgrams['ix1_1']]
    pgrams['gpr2athird']  = [gpr2a[ix-1] for ix in pgrams['ix2_1']]
    pgrams['gpr2afourth'] = [gpr2a[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]
    pgrams['gpr2afifth']  = [gpr2a[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]
    arfftype['gpr2afirst'] = 'numeric'
    arfftype['gpr2asecond'] = 'numeric'
    arfftype['gpr2athird'] = 'numeric'
    arfftype['gpr2afourth'] = 'numeric'
    arfftype['gpr2afifth'] = 'numeric'

    pgrams['gpr2bfirst']  = [gpr2b[ix-1] for ix in pgrams['ix0_1']]
    pgrams['gpr2bsecond'] = [gpr2b[ix-1] for ix in pgrams['ix1_1']]
    pgrams['gpr2bthird']  = [gpr2b[ix-1] for ix in pgrams['ix2_1']]
    pgrams['gpr2bfourth'] = [gpr2b[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]
    pgrams['gpr2bfifth']  = [gpr2b[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]
    arfftype['gpr2bfirst']  = 'numeric'
    arfftype['gpr2bsecond'] = 'numeric'
    arfftype['gpr2bthird']  = 'numeric'
    arfftype['gpr2bfourth'] = 'numeric'
    arfftype['gpr2bfifth']  = 'numeric'

    pgrams['gpr3afirst']  = [gpr3a[ix-1] for ix in pgrams['ix0_1']]
    pgrams['gpr3asecond'] = [gpr3a[ix-1] for ix in pgrams['ix1_1']]
    pgrams['gpr3athird']  = [gpr3a[ix-1] for ix in pgrams['ix2_1']]
    pgrams['gpr3afourth'] = [gpr3a[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]
    pgrams['gpr3afifth']  = [gpr3a[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]
    arfftype['gpr3afirst']  = 'numeric'
    arfftype['gpr3asecond'] = 'numeric'
    arfftype['gpr3athird']  = 'numeric'
    arfftype['gpr3afourth'] = 'numeric'
    arfftype['gpr3afifth']  = 'numeric'
    
    pgrams['gpr3dfirst']  = [gpr3d[ix-1] for ix in pgrams['ix0_1']]
    pgrams['gpr3dsecond'] = [gpr3d[ix-1] for ix in pgrams['ix1_1']]
    pgrams['gpr3dthird']  = [gpr3d[ix-1] for ix in pgrams['ix2_1']]
    pgrams['gpr3dfourth'] = [gpr3d[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]
    pgrams['gpr3dfifth']  = [gpr3d[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]
    arfftype['gpr3dfirst']  = 'numeric'
    arfftype['gpr3dsecond'] = 'numeric'
    arfftype['gpr3dthird']  = 'numeric'
    arfftype['gpr3dfourth'] = 'numeric'
    arfftype['gpr3dfifth']  = 'numeric'
    
    pgrams['gprsumfirst']  = [gprsum[ix-1] for ix in pgrams['ix0_1']]
    pgrams['gprsumsecond'] = [gprsum[ix-1] for ix in pgrams['ix1_1']]
    pgrams['gprsumthird']  = [gprsum[ix-1] for ix in pgrams['ix2_1']]
    pgrams['gprsumfourth'] = [gprsum[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]
    pgrams['gprsumfifth']  = [gprsum[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]
    arfftype['gprsumfirst']  = 'numeric'
    arfftype['gprsumsecond'] = 'numeric'
    arfftype['gprsumthird']  = 'numeric'
    arfftype['gprsumfourth'] = 'numeric'
    arfftype['gprsumfifth']  = 'numeric'
    
    pgrams['pitchproximityfirst']  = pd.array([pprox[ix] for ix in pgrams['ix0_0']], dtype="Int16")
    pgrams['pitchproximitysecond'] = pd.array([pprox[ix] for ix in pgrams['ix1_0']], dtype="Int16")
    pgrams['pitchproximitythird']  = pd.array([pprox[ix] for ix in pgrams['ix2_0']], dtype="Int16")
    pgrams['pitchproximityfourth'] = pd.array([pprox[ix] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_0']], dtype="Int16")
    pgrams['pitchproximityfifth']  = pd.array([pprox[ix] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_0']], dtype="Int16")
    arfftype['pitchproximityfirst']  = 'numeric'
    arfftype['pitchproximitysecond'] = 'numeric'
    arfftype['pitchproximitythird']  = 'numeric'
    arfftype['pitchproximityfourth'] = 'numeric'
    arfftype['pitchproximityfifth']  = 'numeric'

    pgrams['pitchreversalfirst']  = [prev[ix] for ix in pgrams['ix0_0']]
    pgrams['pitchreversalsecond'] = [prev[ix] for ix in pgrams['ix1_0']]
    pgrams['pitchreversalthird']  = [prev[ix] for ix in pgrams['ix2_0']]
    pgrams['pitchreversalfourth'] = [prev[ix] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_0']]
    pgrams['pitchreversalfifth']  = [prev[ix] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_0']]
    arfftype['pitchreversalfirst']  = 'numeric'
    arfftype['pitchreversalsecond'] = 'numeric'
    arfftype['pitchreversalthird']  = 'numeric'
    arfftype['pitchreversalfourth'] = 'numeric'
    arfftype['pitchreversalfifth']  = 'numeric'

    #get values for last note in pitchgroup
    pgrams['lbdmpitchfirst']  = [lbdmpitch[ix-1] for ix in pgrams['ix0_1']]
    pgrams['lbdmpitchsecond'] = [lbdmpitch[ix-1] for ix in pgrams['ix1_1']]
    pgrams['lbdmpitchthird']  = [lbdmpitch[ix-1] for ix in pgrams['ix2_1']]
    pgrams['lbdmpitchfourth'] = [lbdmpitch[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]
    pgrams['lbdmpitchfifth']  = [lbdmpitch[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]
    arfftype['lbdmpitchfirst']  = 'numeric'
    arfftype['lbdmpitchsecond'] = 'numeric'
    arfftype['lbdmpitchthird']  = 'numeric'
    arfftype['lbdmpitchfourth'] = 'numeric'
    arfftype['lbdmpitchfifth']  = 'numeric'
 
    pgrams['lbdmioifirst']  = [lbdmioi[ix-1] for ix in pgrams['ix0_1']]
    pgrams['lbdmioisecond'] = [lbdmioi[ix-1] for ix in pgrams['ix1_1']]
    pgrams['lbdmioithird']  = [lbdmioi[ix-1] for ix in pgrams['ix2_1']]
    pgrams['lbdmioifourth'] = [lbdmioi[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]
    pgrams['lbdmioififth']  = [lbdmioi[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]
    arfftype['lbdmioifirst']  = 'numeric'
    arfftype['lbdmioisecond'] = 'numeric'
    arfftype['lbdmioithird']  = 'numeric'
    arfftype['lbdmioifourth'] = 'numeric'
    arfftype['lbdmioififth']  = 'numeric' 
    
    pgrams['lbdmrestfirst']  = [lbdmrest[ix-1] for ix in pgrams['ix0_1']]
    pgrams['lbdmrestsecond'] = [lbdmrest[ix-1] for ix in pgrams['ix1_1']]
    pgrams['lbdmrestthird']  = [lbdmrest[ix-1] for ix in pgrams['ix2_1']]
    pgrams['lbdmrestfourth'] = [lbdmrest[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]
    pgrams['lbdmrestfifth']  = [lbdmrest[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]
    arfftype['lbdmrestfirst']  = 'numeric'
    arfftype['lbdmrestsecond'] = 'numeric'
    arfftype['lbdmrestthird']  = 'numeric'
    arfftype['lbdmrestfourth'] = 'numeric'
    arfftype['lbdmrestfifth']  = 'numeric'
    
    pgrams['lbdmfirst']  = [lbdm[ix-1] for ix in pgrams['ix0_1']]
    pgrams['lbdmsecond'] = [lbdm[ix-1] for ix in pgrams['ix1_1']]
    pgrams['lbdmthird']  = [lbdm[ix-1] for ix in pgrams['ix2_1']]
    pgrams['lbdmfourth'] = [lbdm[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]
    pgrams['lbdmfifth']  = [lbdm[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]
    arfftype['lbdmfirst']  = 'numeric'
    arfftype['lbdmsecond'] = 'numeric'
    arfftype['lbdmthird']  = 'numeric'
    arfftype['lbdmfourth'] = 'numeric'
    arfftype['lbdmfifth']  = 'numeric'
       
    if vocal:
        pgrams['wordstressfirst']  = [wordstress[ix-1] for ix in pgrams['ix0_1']]
        pgrams['wordstresssecond'] = [wordstress[ix-1] for ix in pgrams['ix1_1']]
        pgrams['wordstressthird']  = [wordstress[ix-1] for ix in pgrams['ix2_1']]
        pgrams['wordstressfourth'] = [wordstress[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]
        pgrams['wordstressfifth']  = [wordstress[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]
        arfftype['wordstressfirst']  = '{True, False}'
        arfftype['wordstresssecond'] = '{True, False}'
        arfftype['wordstressthird']  = '{True, False}'
        arfftype['wordstressfourth'] = '{True, False}'
        arfftype['wordstressfifth']  = '{True, False}'
                
        #NB only take content words
        pgrams['rhymesfirst']  = [rhymescontentwords[ix-1] for ix in pgrams['ix0_1']]
        pgrams['rhymessecond'] = [rhymescontentwords[ix-1] for ix in pgrams['ix1_1']]
        pgrams['rhymesthird']  = [rhymescontentwords[ix-1] for ix in pgrams['ix2_1']]
        pgrams['rhymesfourth'] = [rhymescontentwords[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]
        pgrams['rhymesfifth']  = [rhymescontentwords[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]
        arfftype['rhymesfirst'] = '{True, False}'
        arfftype['rhymessecond'] = '{True, False}'
        arfftype['rhymesthird'] = '{True, False}'
        arfftype['rhymesfourth'] = '{True, False}'
        arfftype['rhymesfifth'] = '{True, False}'
        
        #rhyme_noteoffset
        #rhyme_beatoffset
        pgrams['rhyme_noteoffset'] = [rhymescontentwords_noteoffset[ix-1] for ix in pgrams['ix2_1']]
        pgrams['rhyme_beatoffset'] = [rhymescontentwords_beatoffset[ix-1] for ix in pgrams['ix2_1']]
        arfftype['rhyme_noteoffset'] = 'numeric'
        arfftype['rhyme_beatoffset'] = 'numeric'
        
        
        pgrams['noncontentwordfirst']  = [noncontentword[ix-1] for ix in pgrams['ix0_1']]
        pgrams['noncontentwordsecond'] = [noncontentword[ix-1] for ix in pgrams['ix1_1']]
        pgrams['noncontentwordthird']  = [noncontentword[ix-1] for ix in pgrams['ix2_1']]
        pgrams['noncontentwordfourth'] = [noncontentword[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]
        pgrams['noncontentwordfifth']  = [noncontentword[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]
        arfftype['noncontentwordfirst'] = '{True, False}'
        arfftype['noncontentwordsecond'] = '{True, False}'
        arfftype['noncontentwordthird'] = '{True, False}'
        arfftype['noncontentwordfourth'] = '{True, False}'
        arfftype['noncontentwordfifth'] = '{True, False}'

        pgrams['wordendfirst']  = [wordend[ix-1] for ix in pgrams['ix0_1']]
        pgrams['wordendsecond'] = [wordend[ix-1] for ix in pgrams['ix1_1']]
        pgrams['wordendthird']  = [wordend[ix-1] for ix in pgrams['ix2_1']]        
        pgrams['wordendfourth'] = [wordend[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]        
        pgrams['wordendfifth']  = [wordend[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]        
        arfftype['wordendfirst'] = '{True, False}'
        arfftype['wordendsecond'] = '{True, False}'
        arfftype['wordendthird'] = '{True, False}'
        arfftype['wordendfourth'] = '{True, False}'
        arfftype['wordendfifth'] = '{True, False}'

        pgrams['melismastatefirst']  = [melismastate[ix-1] for ix in pgrams['ix0_1']]
        pgrams['melismastatesecond'] = [melismastate[ix-1] for ix in pgrams['ix1_1']]
        pgrams['melismastatethird']  = [melismastate[ix-1] for ix in pgrams['ix2_1']]        
        pgrams['melismastatefourth'] = [melismastate[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix3_1']]        
        pgrams['melismastatefifth']  = [melismastate[ix-1] if not pd.isna(ix) else np.nan for ix in pgrams['ix4_1']]        
        arfftype['melismastatefirst'] = '{start, in, end}'
        arfftype['melismastatesecond'] = '{start, in, end}'
        arfftype['melismastatethird'] = '{start, in, end}'
        arfftype['melismastatefourth'] = '{start, in, end}'
        arfftype['melismastatefifth'] = '{start, in, end}'

    pgrams['cadence_class'] = ["finalcadence" if (endOfPhrase[ix-1] and phrase_ix[ix-1] == phrase_count - 1) \
                                 else "midcadence" if (endOfPhrase[ix-1] and phrase_ix[ix-1] != phrase_count - 1) \
                                 else "nocadence" \
                                 for ix in pgrams['ix2_1']]
    arfftype['cadence_class'] = '{finalcadence, midcadence, nocadence}'
    
    if pgrams.shape[0] == 0:
        raise NoFeaturesError("No pgrams extracted")
    
    #replace None with np.nan
    
    pgrams.fillna(value=np.nan, inplace=True)    
    return pgrams, arfftype


def getAllMeters(*tr_sets):
    meters = set()
    for tr_set in tr_sets:
        meters.update(list(set(tr_set['timesig'].values)))
    return meters
    
#if posneg: include posneg column as well
def pgrams2arff(pgrams, arfftype, arff_filename, name=None, classfeat=None):
    
    if name is None:
        name = 'cadences'

    #make sure classfeat is last in the list
    featnames = sorted(list(arfftype.keys()))
    if classfeat is not None:
        if classfeat in featnames:
            featnames.remove(classfeat)
            featnames.append(classfeat)
    
    with open(arff_filename, 'w') as f:
        f.write("@relation "+name+"\n\n")
        
        for featname in featnames:
            f.write(f"@attribute {featname} {arfftype[featname]}\n")
        
        f.write("\n@data\n")

        fields = pgrams[featnames].values

        for row in fields:
            strfeats = [str(f) if not pd.isna(f) else '?' for f in row] #generates possible missing values
            f.write(','.join(strfeats))
            f.write('\n')

def getOnePerTunefamilyIDs(pgrams, savepath=None):
    #keep one song per tune family for training
    tfs = defaultdict(set)
    for songid_tf in pgrams[['songid','tunefamily']].values:
        tfs[songid_tf[1]].add(songid_tf[0])
    songids = []
    for tf in tfs.keys():
        songids.append(sample(tfs[tf],1)[0]) #choose one song per tune family
    if savepath is not None:
        with open(savepath,'w') as f:
            json.dump(songids, f)
    return songids

def readOnePerTunefamilyIDs(readpath):
    with open(readpath, 'r') as f:
        songids = json.load(f)
        return songids

