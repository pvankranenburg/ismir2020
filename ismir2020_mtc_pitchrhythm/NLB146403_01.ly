\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB146403_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \clef "treble" 
             \time 4/4
             \key f \major 
             \key f \major 
             f' 8  
             a' 8  
             \bar "|"  %{ end measure 0 %} 
             c'' 4.  
             c'' 8  
             b' 8  
             c'' 8  
             \color "blue" d'' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" a' 2.  \fermata  
             f' 8  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             c'' 4.  
             c'' 8  
             b' 8  
             c'' 8  
             \color "blue" d'' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 2.  \fermata  
             c'' 4  
             \bar "|"  %{ end measure 4 %} 
             c'' 8  
             bes' 8  
             \color "red" a' 8.  
             \color "red" g' 16  
             \color "red" f' 4  
             c'' 4  
             \bar "|"  %{ end measure 5 %} 
             d'' 8  
             f'' 8  
             \color "blue" e'' 8  
             \color "blue" d'' 8  
             \color "blue" c'' 2  \fermata  
             \bar "|"  %{ end measure 6 %} 
             bes' 4  
             bes' 8  
             bes' 8  
             a' 8  
             g' 8  
             f' 8  
             a' 8  
             \bar "|"  %{ end measure 7 %} 
             c'' 4  
             bes' 8  
             g' 8  
             f' 4  
             \bar "|."  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_0" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_0" 
               _  
               _  
               _  
               _  
               _  
              "rule_24" 
               _  
               _  
               _  
               _  
               _  
              "rule_12" 
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
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Laatst" -- 
              " " 
              "maal"__ 
              "zo" 
              "trok" 
              "ik" 
              "op" 
              "de" 
              "jacht," 
              "En" 
              "wat" 
              "vond" 
              "ik" 
              "daar" 
              "zo" 
              "on" -- 
              "ver" -- 
              "wacht?"__ 
              "Een" 
              "scho" -- 
              "ne"__ 
              "her" -- 
              "de" -- 
              "rin"__ 
              "die" 
              "ik" 
              "daar" 
              "zit" -- 
              "ten"__ 
              "vond" 
              "'t Was" 
              "in" 
              "het" 
              "vroe" -- 
              "ge"__ 
              "van" 
              "de" 
              "mor" -- 
              "gen" -- 
              " " 
              "stond"__ 
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
