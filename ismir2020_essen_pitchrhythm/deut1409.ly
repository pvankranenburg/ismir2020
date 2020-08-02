\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1409"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \time 4/4
             \key f \major 
             \key f \major 
             c' 4  
             f' 4  
             d' 4  
             d' 4  
             \bar "|"  %{ end measure 1 %} 
             bes' 4  
             \color "blue" g' 4  
             \color "blue" a' 4  
             \color "blue" f' 4  \fermata  
             \bar "|"  %{ end measure 2 %} 
             c' 4  
             c' 4  
             d' 4  
             d' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" bes' 4  
             \color "blue" e' 4  
             \color "blue" f' 4  
             r 4  \fermata  
             \bar "|"  %{ end measure 4 %} 
             c' 4  
             f' 4  
             d' 4  
             d' 4  
             \bar "|"  %{ end measure 5 %} 
             bes' 4  
             \color "blue" g' 4  
             \color "blue" a' 4  
             \color "blue" f' 4  \fermata  
             \bar "|"  %{ end measure 6 %} 
             c' 4  
             c' 4  
             d' 4  
             d' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" bes' 4  
             \color "blue" e' 4  
             \color "blue" f' 4  
             r 4  \fermata  
             \bar "|"  %{ end measure 8 %} 
             bes' 4.  
             c'' 8  
             a' 4  
             f' 4  
             \bar "|"  %{ end measure 9 %} 
             a' 8  
             g' 8  
             \color "red" g' 4  
             \color "red" a' 4  
             \color "red" f' 4  \fermata  
             \bar "|"  %{ end measure 10 %} 
             bes' 4.  
             c'' 8  
             a' 4  
             f' 4  
             \bar "|"  %{ end measure 11 %} 
             a' 8  
             g' 8  
             g' 4  
             f' 4  
             r 4  \fermata  
             \bar "||"  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
              "rule_35" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_2" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_35" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_4" 
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
