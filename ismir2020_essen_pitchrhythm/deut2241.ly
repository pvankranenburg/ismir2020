\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut2241"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 4/4
             \key f \major 
             \key f \major 
             f' 4  
             \bar "|"  %{ end measure 0 %} 
             g' 4  
             f' 4  
             e' 4  
             f' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "red" g' 4  
             \color "red" a' 4  
             \color "red" f' 4  \fermata  
             f' 4  
             \bar "|"  %{ end measure 2 %} 
             g' 4  
             a' 4  
             bes' 4  
             a' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" f' 4  
             \color "blue" g' 4  
             \color "blue" a' 4  \fermata  
             f' 4  
             \bar "|"  %{ end measure 4 %} 
             g' 4  
             g' 4  
             a' 4  
             g' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" f' 4  
             \color "blue" e' 4  
             \color "blue" d' 4  \fermata  
             g' 4  
             \bar "|"  %{ end measure 6 %} 
             a' 4  
             g' 4  
             f' 4  
             d' 4  
             \bar "|"  %{ end measure 7 %} 
             f' 4  
             g' 4  
             f' 4  \fermata  
             \bar "||"  %{ end measure 8 %} 
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
              "rule_23" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_10" 
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
