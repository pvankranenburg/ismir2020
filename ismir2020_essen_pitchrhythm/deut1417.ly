\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1417"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 2/4
             \key g \major 
             \key g \major 
             d' 8  
             \bar "|"  %{ end measure 0 %} 
             g' 8  
             g' 8  
             a' 8  
             a' 8  
             \bar "|"  %{ end measure 1 %} 
             b' 8  
             \color "blue" b' 16  
             \color "blue" a' 16  
             \color "blue" g' 8  \fermata  
             g' 8  
             \bar "|"  %{ end measure 2 %} 
             a' 8  
             a' 8  
             b' 8  
             d'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" c'' 8  
             \color "blue" b' 8  
             \color "blue" a' 8  \fermata  
             b' 8  
             \bar "|"  %{ end measure 4 %} 
             d'' 8  
             d'' 8  
             a' 8  
             b' 8  
             \bar "|"  %{ end measure 5 %} 
             d'' 8  
             \color "blue" c'' 16  
             \color "blue" b' 16  
             \color "blue" a' 8  \fermata  
             c'' 8  
             \bar "|"  %{ end measure 6 %} 
             b' 8  
             a' 8  
             g' 8  
             b' 8  
             \bar "|"  %{ end measure 7 %} 
             a' 16  
             g' 16  
             \color "blue" fis' 16  
             \color "blue" e' 16  
             \color "blue" d' 8  \fermata  
             d' 8  
             \bar "|"  %{ end measure 8 %} 
             g' 8  
             g' 8  
             a' 8  
             d'' 8  
             \bar "|"  %{ end measure 9 %} 
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 10 %} 
             g' 4  
             r 8  \fermata  
             \bar "||"  %{ end measure 11 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
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
              "rule_10" 
               _  
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
              "rule_9" 
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
