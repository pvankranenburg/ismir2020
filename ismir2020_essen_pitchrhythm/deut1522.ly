\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1522"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 4/4
             \key g \major 
             \key g \major 
             d'' 4  
             \bar "|"  %{ end measure 0 %} 
             b' 4  
             g' 4  
             a' 4  
             fis' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" g' 4  
             \color "blue" g' 4  
             \color "blue" g' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 2 %} 
             d'' 4  
             d'' 4  
             d'' 4  
             d'' 4  
             \bar "|"  %{ end measure 3 %} 
             e'' 4  
             d'' 4  
             b' 4  \fermata  
             \bar "||"  %{ end measure 4 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
              "rule_30" 
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
