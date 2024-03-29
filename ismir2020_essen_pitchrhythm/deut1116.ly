\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1116"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 3/4
             \key f \major 
             \key f \major 
             c' 8  
             \bar "|"  %{ end measure 0 %} 
             f' 8  
             a' 8  
             c'' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" c'' 8  
             \color "blue" bes' 8  
             \color "blue" g' 4  
             r 8  \fermata  
             f' 8  
             \bar "|"  %{ end measure 2 %} 
             e' 8  
             f' 8  
             g' 4  
             bes' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" d'' 8  
             \color "blue" c'' 8  
             \color "blue" a' 4  
             r 8  \fermata  
             c' 8  
             \bar "|"  %{ end measure 4 %} 
             f' 8  
             f' 8  
             a' 4  
             c'' 4  
             \bar "|"  %{ end measure 5 %} 
             f'' 2  ~  
             f'' 8  
             d'' 8  
             \bar "|"  %{ end measure 6 %} 
             c'' 8  
             bes' 8  
             c'' 4  
             g' 4  
             \bar "|"  %{ end measure 7 %} 
             f' 2  
             r 8  \fermata  
             \bar "||"  %{ end measure 8 %} 
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
