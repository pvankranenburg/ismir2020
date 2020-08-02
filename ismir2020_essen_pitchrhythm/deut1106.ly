\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1106"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \time 3/4
             \key f \major 
             \key f \major 
             c' 8.  
             c' 16  
             f' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             a' 8  
             \color "red" g' 8  
             \color "red" g' 8  
             \color "red" f' 8  
             r 8  \fermata  
             c' 8  
             \bar "|"  %{ end measure 2 %} 
             f' 8.  
             a' 16  
             a' 4  
             c'' 4  
             \bar "|"  %{ end measure 3 %} 
             c'' 8  
             \color "blue" bes' 8  
             \color "blue" bes' 8  
             \color "blue" a' 8  
             r 4  \fermata  
             \bar "|"  %{ end measure 4 %} 
             a' 8  
             c'' 16  
             a' 16  
             f' 4  
             c'' 4  
             \bar "|"  %{ end measure 5 %} 
             bes' 16  
             c'' 16  
             \color "blue" d'' 16  
             \color "blue" bes' 16  
             \color "blue" g' 4  
             r 4  \fermata  
             \bar "|"  %{ end measure 6 %} 
             c' 8  
             e' 8  
             g' 4  
             bes' 4  
             \bar "|"  %{ end measure 7 %} 
             a' 8  
             c'' 16  
             \color "red" a' 16  
             \color "red" f' 4.  
             \color "red" e' 8  \fermata  
             \bar "|"  %{ end measure 8 %} 
             f' 8.  
             a' 16  
             \color "blue" g' 8.  
             \color "blue" bes' 16  
             \color "blue" a' 4  \fermata  
             \bar "|"  %{ end measure 9 %} 
             bes' 8.  
             d'' 16  
             c'' 4  
             a' 4  
             \bar "|"  %{ end measure 10 %} 
             c'' 16  
             bes' 16  
             a' 16  
             g' 16  
             g' 4  
             f' 8  
             r 8  \fermata  
             \bar "||"  %{ end measure 11 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_0" 
               _  
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
               _  
               _  
               _  
              "Miss" 
               _  
               _  
               _  
               _  
              "rule_13" 
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
