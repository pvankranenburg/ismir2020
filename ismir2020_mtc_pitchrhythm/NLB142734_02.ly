\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB142734_02"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 3/4
             \key f \major 
             \key f \major 
             g' 8  
             \bar "|"  %{ end measure 0 %} 
             \color "red" g' 8  
             \color "red" e' 8  
             \color "red" c' 4  
             r 8  
             c'' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" c'' 8  
             \color "blue" a' 8  
             \color "blue" f' 4  \fermata  
             f' 8.  
             g' 16  
             \bar "|"  %{ end measure 2 %} 
             a' 8.  
             a' 16  
             a' 8.  
             a' 16  
             a' 8  
             c'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" c'' 8.  
             \color "blue" a' 16  
             \color "blue" a' 4  \fermata  
             f' 8.  
             g' 16  
             \bar "|"  %{ end measure 4 %} 
             a' 8.  
             a' 16  
             a' 8.  
             a' 16  
             a' 8.  
             a' 16  
             \bar "|"  %{ end measure 5 %} 
             a' 8.  
             c'' 16  
             d'' 4.  
             bes' 8  
             \bar "|"  %{ end measure 6 %} 
             a' 2.  
             \bar "|"  %{ end measure 7 %} 
             g' 2.  
             \bar "|"  %{ end measure 8 %} 
             f' 2  
             r 4  
             \bar "|."  %{ end measure 9 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
              "rule_2" 
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
               _  
               _  
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Den" 
              "Maan" -- 
              " " 
              "dag,"__ 
              "den" 
              "Maan" -- 
              " " 
              "dag"__ 
              "en" 
              "ik" 
              "wensch" 
              "dat" 
              "'t al" -- 
              "tijd"__ 
              "Maan" -- 
              "dag"__ 
              "wa" -- 
              " " 
              "re"__ 
              "en" 
              "dat" 
              "ik," 
              "dat" 
              "ik," 
              "bij" 
              "mijn," 
              "bij" 
              "mijn" 
              "Cor" -- 
              "ne" -- 
              "lia"__ 
              "wa" -- 
              " " 
              "re."__ 
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
