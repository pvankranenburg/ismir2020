\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1447"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 3/8
             \key g \major 
             \key g \major 
             d' 8  
             \bar "|"  %{ end measure 0 %} 
             g' 16  
             g' 16  
             g' 8  
             g' 8  
             \bar "|"  %{ end measure 1 %} 
             g' 16  
             e' 16  
             \color "blue" d' 8  
             \color "blue" d' 8  
             \bar "|"  %{ end measure 2 %} 
             \color "blue" g' 4  \fermata  
             d' 8  
             \bar "|"  %{ end measure 3 %} 
             g' 16  
             g' 16  
             g' 8  
             g' 8  
             \bar "|"  %{ end measure 4 %} 
             g' 16  
             e' 16  
             \color "blue" d' 8  
             \color "blue" d' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" g' 4  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 6 %} 
             b' 16  
             b' 16  
             b' 8  
             d'' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" c'' 16  
             \color "blue" b' 16  
             \color "blue" a' 8  \fermata  
             b' 8  
             \bar "|"  %{ end measure 8 %} 
             g' 16  
             g' 16  
             g' 8  
             b' 8  
             \bar "|"  %{ end measure 9 %} 
             a' 16  
             fis' 16  
             d' 8  
             d' 8  
             \bar "|"  %{ end measure 10 %} 
             g' 4  \fermata  
             \bar "||"  %{ end measure 11 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_5" 
               _  
               _  
               _  
               _  
               _  
               _  
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
              "rule_13" 
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
