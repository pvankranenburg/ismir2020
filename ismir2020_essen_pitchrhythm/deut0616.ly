\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut0616"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 2/4
             \key bes \major 
             \key bes \major 
             f' 8  
             \bar "|"  %{ end measure 0 %} 
             \color "red" bes' 8  
             \color "red" f' 8  
             \color "red" bes' 8  
             f' 8  
             \bar "|"  %{ end measure 1 %} 
             bes' 8  
             \color "blue" d'' 16  
             \color "blue" bes' 16  
             \color "blue" f' 8  \fermata  
             f' 8  
             \bar "|"  %{ end measure 2 %} 
             g' 8  
             f' 8  
             g' 8  
             f' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" g' 8  
             \color "blue" ees' 8  
             \color "blue" d' 8  \fermata  
             f' 8  
             \bar "|"  %{ end measure 4 %} 
             g' 8  
             f' 8  
             g' 8  
             f' 8  
             \bar "|"  %{ end measure 5 %} 
             c'' 8  
             bes' 8  
             bes' 8  \fermata  
             \bar "||"  %{ end measure 6 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
              "rule_33" 
               _  
               _  
               _  
               _  
              "rule_9" 
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
