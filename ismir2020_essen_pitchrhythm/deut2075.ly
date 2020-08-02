\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut2075"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \time 2/4
             \key g \major 
             \key g \major 
             g' 4  
             \color "red" a' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "red" b' 4  
             \color "red" g' 8  
             r 8  \fermata  
             \bar "|"  %{ end measure 2 %} 
             g' 4  
             a' 8  
             \color "red" a' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "red" b' 4  
             \color "red" g' 8  
             r 8  \fermata  
             \bar "|"  %{ end measure 4 %} 
             b' 4  
             a' 8  
             g' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" b' 8  
             \color "red" b' 8  
             \color "red" b' 4  \fermata  
             \bar "|"  %{ end measure 6 %} 
             a' 8  
             a' 8  
             a' 8  
             g' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "red" b' 8  
             \color "red" b' 8  
             \color "red" b' 4  \fermata  
             \bar "|"  %{ end measure 8 %} 
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 9 %} 
             g' 4  
             r 4  \fermata  
             \bar "||"  %{ end measure 10 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
              "Miss" 
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
              "Miss" 
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
