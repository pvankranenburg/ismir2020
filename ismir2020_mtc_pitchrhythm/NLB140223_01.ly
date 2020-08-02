\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB140223_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*12 
             \clef "treble" 
             \time 3/4
             \key bes \major 
             \key bes \major 
             d' 8  
             d' 8  
             ees' 8  
             \bar "|"  %{ end measure 0 %} 
             f' 8.  
             ees' 16  
             d' 8  
             f' 8  
             d'' 8.  
             \color "blue" c'' 16  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" bes' 4  
             \color "blue" bes' 8  \fermata  
             d'' 8  
             d'' 8  
             d'' 8  
             \bar "|"  %{ end measure 2 %} 
             ees'' 8  
             c'' 8  
             a' 8  
             f' 8  
             \color "blue" g' 8  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" bes' 4.  \fermata  
             d' 8  
             d' 8  
             ees' 8  
             \bar "|"  %{ end measure 4 %} 
             f' 8.  
             ees' 16  
             d' 8  
             f' 8  
             d'' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" bes' 4  
             \color "blue" bes' 8  \fermata  
             d'' 8  
             d'' 8  
             d'' 8  
             \bar "|"  %{ end measure 6 %} 
             ees'' 8  
             c'' 8  
             a' 8  
             f' 8  
             \color "blue" g' 8  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" bes' 4  \fermata  
             r 8  
             f' 8  
             g' 8  
             f' 8  
             \bar "|"  %{ end measure 8 %} 
             a' 4  
             ees' 8.  
             f' 16  
             g' 8  
             \color "red" f' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "red" f' 4  
             \color "red" bes' 8  \fermata  
             f' 8  
             g' 8  
             f' 8  
             \bar "|"  %{ end measure 10 %} 
             a' 4  
             g' 8  
             f' 8  
             \color "blue" e' 8  
             \color "blue" f' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" bes' 4  \fermata  
             r 8  
             d' 8  
             d' 8  
             ees' 8  
             \bar "|"  %{ end measure 12 %} 
             f' 8.  
             ees' 16  
             d' 8  
             f' 8  
             d'' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "blue" bes' 4  
             \color "blue" d' 8  \fermata  
             bes' 8  
             c'' 8  
             bes' 8  
             \bar "|"  %{ end measure 14 %} 
             ees'' 8  
             c'' 8  
             a' 8  
             f' 8  
             \color "blue" g' 8  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 15 %} 
             \color "blue" bes' 4  \fermata  
             r 8  
             d' 8  
             d' 8  
             ees' 8  
             \bar "|"  %{ end measure 16 %} 
             f' 8.  
             ees' 16  
             d' 8  
             f' 8  
             d'' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 17 %} 
             \color "blue" bes' 4  
             \color "blue" d' 8  \fermata  
             bes' 8  
             c'' 8  
             bes' 8  
             \bar "|"  %{ end measure 18 %} 
             ees'' 8  
             c'' 8  
             a' 8  
             f' 8  
             g' 8  
             a' 8  
             \bar "|"  %{ end measure 19 %} 
             bes' 4.  
             \bar "|."  %{ end measure 20 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_27" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_11" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_27" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_8" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "Miss" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_17" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_27" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_11" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_27" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Ik" 
              "was" 
              "eens," 
              "laatst," 
              "aan" 
              "mij" -- 
              "ne"__ 
              "deur" 
              "ge" -- 
              "ze" -- 
              "ten,"__ 
              "het" 
              "was" 
              "op" 
              "ee" -- 
              "nen"__ 
              "vroe" -- 
              "gen"__ 
              "mor" -- 
              "gen" -- 
              "stond,"__ 
              "een" 
              "her" -- 
              "de" -- 
              "rin" -- 
              "ne" -- 
              "ke"__ 
              "dat" 
              "daar" 
              "pas" -- 
              "seer" -- 
              "de,"__ 
              "dat" 
              "met" 
              "haar" 
              "schaap" -- 
              "kens"__ 
              "naar" 
              "de" 
              "wei" -- 
              "de"__ 
              "gong." 
              "Haar" 
              "tee" -- 
              "re"__ 
              "le" -- 
              "den"__ 
              "en" 
              "haar" 
              "schoon" -- 
              "he" -- 
              "den,"__ 
              "die" 
              "heb" -- 
              "ben"__ 
              "gansch" 
              "mijn" 
              "jong" 
              "hart" 
              "door" -- 
              "wond."__ 
              "En" 
              "ik" 
              "die" 
              "kon" 
              "haar" 
              "schoon" -- 
              "heid"__ 
              "niet" 
              "ver" -- 
              "ge" -- 
              "ten."__ 
              "'k Wil" 
              "haar" 
              "gaan" 
              "zoe" -- 
              "ken"__ 
              "al" 
              "waar" 
              "ik" 
              "haar" 
              "vond." 
              "En" 
              "ik" 
              "die" 
              "kon" 
              "haar" 
              "schoon" -- 
              "heid"__ 
              "niet" 
              "ver" -- 
              "ge" -- 
              "ten."__ 
              "'k Wil" 
              "haar" 
              "gaan" 
              "zoe" -- 
              "ken"__ 
              "al" 
              "waar" 
              "ik" 
              "haar" 
              "vond." 
               } 
              
        >>
      
  } 
 
\paper { }
\layout {
  \context {
    \RemoveEmptyStaffContext
    \override VerticalAxisGroup #'remove-first = ##t
  }
 }
 

#(set-global-staff-size 14)
#(set-global-staff-size 14)
#(set-global-staff-size 14)
\layout { indent = 0\cm}

#(set-global-staff-size 14)
\layout { indent = 0\cm}

#(set-global-staff-size 14)
\layout { indent = 0\cm}
