\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1433"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 2/4
             \key f \major 
             \key d \minor 
             d' 8  
             \bar "|"  %{ end measure 0 %} 
             d' 8  
             e' 8  
             f' 8  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" a' 4  
             \color "blue" a' 8  \fermata  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             bes' 8  
             a' 8  
             \color "blue" g' 8  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 4  
             r 8  \fermata  
             a' 8  
             \bar "|"  %{ end measure 4 %} 
             g' 8  
             f' 8  
             e' 8  
             \color "blue" d' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" cis' 4  
             \color "blue" a' 8  \fermata  
             g' 8  
             \bar "|"  %{ end measure 6 %} 
             f' 8  
             e' 8  
             d' 8  
             cis' 8  
             \bar "|"  %{ end measure 7 %} 
             d' 4  
             r 8  \fermata  
             \bar "||"  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
              "rule_25" 
               _  
               _  
               _  
               _  
               _  
              "rule_7" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_25" 
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
