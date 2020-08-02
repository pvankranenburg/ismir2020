\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut2143"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 4/4
             \key f \major 
             \key f \major 
             c'' 4  
             \bar "|"  %{ end measure 0 %} 
             c'' 4  
             d'' 4  
             c'' 4  
             bes' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" bes' 4  
             \color "blue" g' 4  
             \color "blue" f' 2  
             \bar "|"  %{ end measure 2 %} 
             r 4  \fermata  
             f' 4  
             a' 4  
             bes' 4  
             \bar "|"  %{ end measure 3 %} 
             c'' 4  
             g' 4  
             \color "red" a' 4  
             \color "red" bes' 4  
             \bar "|"  %{ end measure 4 %} 
             \color "red" c'' 2  
             r 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 5 %} 
             bes' 4  
             c'' 4  
             d'' 4  
             c'' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "red" bes' 4  
             \color "red" a' 4  
             \color "red" bes' 2  
             \bar "|"  %{ end measure 7 %} 
             r 4  \fermata  
             \color "red" a' 4  
             \color "red" g' 4  
             a' 4  
             \bar "|"  %{ end measure 8 %} 
             bes' 4  
             c'' 4  
             c'' 4  
             b' 4  
             \bar "|"  %{ end measure 9 %} 
             c'' 2.  \fermata  
             \bar "||"  %{ end measure 10 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
              "rule_34" 
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
              "Miss" 
               _  
              "rule_36" 
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
