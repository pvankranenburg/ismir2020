\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut2118"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \time 2/4
             \key f \major 
             \key f \major 
             c'' 8  
             c'' 8  
             c'' 8  
             c'' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" c'' 8  
             \color "blue" d'' 8  
             \color "blue" bes' 4  \fermata  
             \bar "|"  %{ end measure 2 %} 
             a' 8  
             bes' 8  
             \color "red" g' 8  
             \color "red" e' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "red" f' 4  
             r 8  \fermata  
             c'' 8  
             \bar "|"  %{ end measure 4 %} 
             c'' 8  
             c'' 8  
             c'' 8  
             c'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" c'' 8  
             \color "red" d'' 8  
             \color "red" bes' 4  \fermata  
             \bar "|"  %{ end measure 6 %} 
             bes' 8  
             r 8  
             bes' 8  
             r 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" bes' 8  
             \color "blue" c'' 8  
             \color "blue" a' 8  
             r 8  \fermata  
             \bar "|"  %{ end measure 8 %} 
             f' 8  
             a' 8  
             g' 8  
             e' 8  
             \bar "|"  %{ end measure 9 %} 
             f' 4  
             r 4  \fermata  
             \bar "||"  %{ end measure 10 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
              "rule_36" 
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
              "rule_14" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
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
\layout { indent = 0\cm}

#(set-global-staff-size 14)
\layout { indent = 0\cm}

#(set-global-staff-size 14)
\layout { indent = 0\cm}
