\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB076591_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 2/4
             \key g \major 
             \key g \major 
             d' 8  
             \bar "|"  %{ end measure 0 %} 
             b' 8  
             \color "red" b' 16  
             \color "red" b' 16  
             \color "red" b' 8  
             d' 8  
             \bar "|"  %{ end measure 1 %} 
             b' 8  
             \color "blue" b' 16  
             \color "blue" b' 16  
             \color "blue" b' 8  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 2 %} 
             d'' 8  
             d'' 8  
             c'' 8  
             b' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 8  
             \color "blue" a' 8  
             \color "blue" a' 8  \fermata  
             d' 8  
             \bar "|"  %{ end measure 4 %} 
             a' 8  
             a' 16  
             a' 16  
             a' 8  
             a' 8  
             \bar "|"  %{ end measure 5 %} 
             a' 8  
             \color "red" a' 16  
             \color "red" a' 16  
             \color "red" a' 8  \fermata  
             b' 8  
             \bar "|"  %{ end measure 6 %} 
             c'' 8  
             c'' 8  
             b' 8  
             a' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "red" a' 8  
             \color "red" g' 8  
             \color "red" g' 8  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 8 %} 
             \time 3/8
             fis'' 4  
             e'' 8  
             \bar "|"  %{ end measure 9 %} 
             d'' 4  
             b' 16  
             b' 16  
             \bar "|"  %{ end measure 10 %} 
             d'' 8  
             c'' 8  
             a' 16  
             \color "red" a' 16  
             \bar "|"  %{ end measure 11 %} 
             \color "red" c'' 8  
             \color "red" b' 8  \fermata  
             g' 8  
             \bar "|"  %{ end measure 12 %} 
             g'' 4  
             e'' 8  
             \bar "|"  %{ end measure 13 %} 
             d'' 4  
             b' 16  
             b' 16  
             \bar "|"  %{ end measure 14 %} 
             d'' 8  
             c'' 8  
             a' 8  
             \bar "|"  %{ end measure 15 %} 
             g' 4.  
             \bar "|."  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
              "rule_26" 
               _  
               _  
               _  
               _  
              "rule_26" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_26" 
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
              "Miss" 
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
              "Miss" 
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
              "Al" -- 
              "tijd"__ 
              "in" 
              "de" 
              "wind" 
              "al" -- 
              "tijd"__ 
              "in" 
              "de" 
              "wind," 
              "Zo" 
              "liep" 
              "ik" 
              "naar" 
              "dat" 
              "schip" -- 
              "pers" -- 
              "kind"__ 
              "Al" -- 
              "tijd"__ 
              "in" 
              "de" 
              "wind" 
              "al" -- 
              "tijd"__ 
              "in" 
              "de" 
              "wind," 
              "Zo" 
              "liep" 
              "ik" 
              "naar" 
              "dat" 
              "schip" -- 
              "pers" -- 
              "kind"__ 
              "Hoe" -- 
              "zee,"__ 
              "hoe" -- 
              "za,"__ 
              "weer" 
              "een" 
              "an" -- 
              "der,"__ 
              "weer" 
              "een" 
              "an" -- 
              "der,"__ 
              "Hoe" -- 
              "zee,"__ 
              "hoe" -- 
              "za,"__ 
              "weer" 
              "een" 
              "an" -- 
              "der"__ 
              "ja" 
              "ja." 
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
