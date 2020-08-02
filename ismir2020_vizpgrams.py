from music21 import *
import os
import csv
import shutil
import pandas as pd
import random

#in shell do a: ulimit -Sn 10000

mtcfs2path = '/Users/krane108/data/MTC/MTC-FS-INST-2.0/krn'
essenpath = '/Users/krane108/data/essen/allkrn_withfermata'
chorpart = '/Users/krane108/data/bachchorales/allkrn'

# parse the score of a song
# add indices to the notes (tied notes counted as one)
def getScoreWithIndices(nlbid):
    # load song
    # add attribute to continuations of tied notes
    # add title
    # insert breath marks at cadences
    # returns song
    if nlbid[:3] == "NLB":
        krnpath = mtcfs2path
    elif nlbid[:4] == "chor":
        krnpath = chorpart
    else:
        krnpath = essenpath

    s = converter.parse(krnpath+'/'+nlbid+'.krn')
    for n in s.flat.notes:
        n.patterncount = 0
        if not n.tie:
            n.skip = False
        else:
            if n.tie.type == 'start':
                n.skip = False
            else:
                n.skip = True
    ix = -1
    for n in s.flat.notes:
        if not n.skip:
            ix += 1
        n.ix = ix
    s.insert(metadata.Metadata())
    #s.metadata.title = nlbid + " (" + s.flat.getElementsByClass('Key')[0].name + ")"
    s.metadata.title = nlbid
    for el in s.flat.getElementsByClass(humdrum.spineParser.GlobalComment): 
        if 'segment' in el.comment: 
            n = s.flat.notes.getElementBeforeOffset(el.offset)
            if n:
                n.articulations.append(articulations.BreathMark())
    #same number of lyrics for each note
    maxlyr = 0
    for n in s.flat.notes:
        if len(n.lyrics) > maxlyr:
            maxlyr = len(n.lyrics)
    for n in s.flat.notes:
        while len(n.lyrics) != maxlyr:
            n.addLyric(" ")
    #remove existing expression to make place for fermata
    if nlbid[:3] == "NLB":
        for n in s.flat.notes:
            n.expressions = []
    #add fermata at end of phrase
    c = ""
    n = None
    for symb in s.flat:
        if type(symb).__name__ == 'Note':
            n = symb
        if type(symb).__name__ == 'GlobalComment':
            if "segment" in symb.comment:
                if "0.0" not in symb.comment:
                    n.expressions.append(m21.expressions.Fermata())
    return s

#ix2 is index of final note + 1
def annotatetrigram(songs, nlbid, ix0, ix2, rule_no, cadence_class):
    #song in songs?
    if not nlbid in songs.keys():
        songs[nlbid] = getScoreWithIndices(nlbid)
    s = songs[nlbid].flat.notes
    color = "blue"
    if cadence_class == 'nocadence' or rule_no == -1:
        color = "red"
    for n in s:
        if n.ix >= ix0 and n.ix < ix2:
            n.style.color = color
        if n.ix == ix0:
            if rule_no >= 0:
                n.addLyric(f'rule_{rule_no}',0)
            else:
                n.addLyric(f'Miss',0)

# make sure directory f exists
def ensure_dir(f):
    if not os.path.exists(f):
        os.makedirs(f)

# create pngs of all scores
def writescores(songs, outputdir, prefix="", fmt='ly'):
    if fmt=='xml':
        writescores_xml(songs, outputdir, prefix=prefix)
    if fmt=='ly':
        writescores_ly(songs, outputdir, prefix=prefix)

def writescores_ly(songs, outputdir, prefix=""):
    ensure_dir(outputdir)
    for s in songs.values():
        out_png = s.write('lily.png')
        out_eps = s.write('lily.eps')
        shutil.move(out_png,outputdir+'/'+prefix+s.metadata.title+'.png')
        shutil.move(out_eps,outputdir+'/'+prefix+s.metadata.title+'.ly')

def writescores_xml(songs, outputdir, prefix=""):
    ensure_dir(outputdir)
    for s in songs.values():
        out = s.write('musicxml.png')
        shutil.move(out,outputdir+'/'+prefix+s.metadata.title+'.png')


def create_html_index(songs, outputdir):
    ensure_dir(outputdir)
    f = open(outputdir+'/index.html','w')
    f.write("<html>")
    f.write("<body>")

    for s in sorted(songs.keys()):
        f.write(f"<p>{songs[s].metadata.title}</p>")
        f.write(f"<p><img src=\"{songs[s].metadata.title}.png\"></p><br />")

    f.write("</body")
    f.write("</html>")
    f.close()

# This takes a , generates visualizations and html for each pattern
# if random_song_selection: max_number is number of SONGS
# if not random_song_selection: max_number is number of trigrams to annotate
# if nlbids is a list of nlbids, add those in any case.
def viztrigrams(filename, outputdir, startat=0, max_number=0, random_song_selection=False, nlbids=None):
    trigrams = pd.read_csv(filename)
    songs = {}
    count = 0
    random_nlbids = random.sample(list(set(trigrams['songid'].values)), max_number)
    if nlbids:
        random_nlbids = list(set(random_nlbids+nlbids))
    if random_song_selection:
        max_number = len(trigrams)
    for ix, t in enumerate(trigrams.values):
        if ix < startat:
            continue
        if count > max_number:
            break
        if random_song_selection:
            if not t[0] in random_nlbids:
                continue
        annotatetrigram(songs, t[0], t[1], t[2], t[3], t[4])
        #print(count, t[0], t[1], t[2], t[3], t[4])
        count += 1
    ensure_dir(outputdir)
    writescores(songs, outputdir)
    create_html_index(songs, outputdir+'/')
