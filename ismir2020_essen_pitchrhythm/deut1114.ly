\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1114"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 6/8
             \key g \major 
             \key g \major 
             d' 8  
             \bar "|"  %{ end measure 0 %} 
             g' 8  
             g' 8  
             g' 8  
             b' 8  
             \color "blue" a' 8  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" a' 4.  
             r 4  \fermata  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             a' 8  
             a' 8  
             a' 8  
             c'' 8  
             b' 8  
             a' 8  
             \bar "|"  %{ end measure 3 %} 
             b' 4  
             e'' 8  
             d'' 4  
             c'' 8  
             \bar "|"  %{ end measure 4 %} 
             b' 4.  
             r 4  \fermata  
             \bar "||"  %{ end measure 5 %} 
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
