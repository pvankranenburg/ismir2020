\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1676"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 3/4
             \key c \major 
             \key c \major 
             c' 4  
             \bar "|"  %{ end measure 0 %} 
             \color "red" c' 2  
             \color "red" c' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "red" b 2  
             e' 4  
             \bar "|"  %{ end measure 2 %} 
             d' 4  
             \color "red" c' 4  
             \color "red" b 4  
             \bar "|"  %{ end measure 3 %} 
             \color "red" a 2  \fermata  
             g 4  
             \bar "|"  %{ end measure 4 %} 
             \color "red" a 2  
             \color "red" b 4  
             \bar "|"  %{ end measure 5 %} 
             \color "red" c' 2  
             c' 4  
             \bar "|"  %{ end measure 6 %} 
             c' 4  
             b 4  
             a 4  
             \bar "|"  %{ end measure 7 %} 
             g 2  \fermata  
             \bar "||"  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
              "rule_14" 
               _  
               _  
               _  
               _  
              "Miss" 
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
