\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1176"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \time 3/8
             \key d \major 
             \key d \major 
             d' 8  
             fis' 8  
             a' 8  
             \bar "|"  %{ end measure 1 %} 
             d' 8  
             fis' 8  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             b' 8  
             \color "blue" b' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 4  
             r 8  \fermata  
             \bar "|"  %{ end measure 4 %} 
             b' 8  
             b' 8  
             b' 8  
             \bar "|"  %{ end measure 5 %} 
             a' 4  
             a' 8  
             \bar "|"  %{ end measure 6 %} 
             g' 8  
             g' 8  
             \color "red" g' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "red" fis' 8  
             \color "red" fis' 8  \fermata  
             fis' 8  
             \bar "|"  %{ end measure 8 %} 
             e' 8  
             e' 8  
             e' 8  
             \bar "|"  %{ end measure 9 %} 
             d' 4  
             r 8  \fermata  
             \bar "||"  %{ end measure 10 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "Miss" 
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
