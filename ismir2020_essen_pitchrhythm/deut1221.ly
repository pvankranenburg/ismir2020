\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1221"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \time 3/4
             \key ees \major 
             \key ees \major 
             ees 4  
             g 4  
             bes 4  
             \bar "|"  %{ end measure 1 %} 
             ees' 4  
             \color "blue" d' 8  
             \color "blue" c' 8  
             \color "blue" bes 4  \fermata  
             \bar "|"  %{ end measure 2 %} 
             c' 4  
             aes 4  
             ees' 8  
             c' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" bes 4.  
             \color "blue" aes 8  
             \color "blue" g 4  \fermata  
             \bar "|"  %{ end measure 4 %} 
             bes 8  
             bes 8  
             aes 8  
             aes 8  
             f 8  
             f 8  
             \bar "|"  %{ end measure 5 %} 
             c' 8  
             c' 8  
             bes 8  
             \color "red" bes 8  
             \color "red" g 8  
             \color "red" g 8  \fermata  
             \bar "|"  %{ end measure 6 %} 
             bes 8  
             bes 8  
             aes 8  
             aes 8  
             f 8  
             f 8  
             \bar "|"  %{ end measure 7 %} 
             c' 8  
             c' 8  
             bes 8  
             \color "red" bes 8  
             \color "red" g 8  
             \color "red" g 8  \fermata  
             \bar "|"  %{ end measure 8 %} 
             ees 4  
             \color "blue" g 4  
             \color "blue" bes 4  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" g' 2.  \fermata  
             \bar "|"  %{ end measure 10 %} 
             f' 4  
             aes' 4  
             d' 4  
             \bar "|"  %{ end measure 11 %} 
             ees' 2  
             r 4  \fermata  
             \bar "||"  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_4" 
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
