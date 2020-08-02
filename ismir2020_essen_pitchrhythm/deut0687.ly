\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut0687"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \time 3/4
             \key f \major 
             \key d \minor 
             d' 4  
             f' 4  
             g' 4  
             \bar "|"  %{ end measure 1 %} 
             a' 2  
             bes' 4  
             \bar "|"  %{ end measure 2 %} 
             \color "blue" a' 2  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 2  
             r 4  \fermata  
             \bar "|"  %{ end measure 4 %} 
             a' 4  
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 5 %} 
             c'' 2  
             bes' 4  
             \bar "|"  %{ end measure 6 %} 
             a' 4  
             \color "red" g' 4  
             \color "red" g' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "red" f' 2  \fermata  
             a' 4  
             \bar "|"  %{ end measure 8 %} 
             g' 4  
             a' 4  
             \color "red" bes' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "red" a' 2  
             \color "red" d' 4  
             \bar "|"  %{ end measure 10 %} 
             f' 4  
             \color "blue" e' 4  
             \color "blue" d' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" c' 2  
             r 4  \fermata  
             \bar "|"  %{ end measure 12 %} 
             g' 4  
             g' 4  
             g' 4  
             \bar "|"  %{ end measure 13 %} 
             f' 8  
             e' 8  
             f' 8  
             g' 8  
             a' 4  
             \bar "|"  %{ end measure 14 %} 
             g' 4  
             f' 4  
             e' 4  
             \bar "|"  %{ end measure 15 %} 
             d' 2.  \fermata  
             \bar "||"  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
               _  
              "Miss" 
               _  
               _  
               _  
               _  
               _  
              "rule_36" 
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
