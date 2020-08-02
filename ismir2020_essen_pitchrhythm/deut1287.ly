\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1287"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 3/4
             \key f \major 
             \key f \major 
             c' 8  
             \bar "|"  %{ end measure 0 %} 
             f' 8  
             \color "red" a' 16  
             \color "red" g' 16  
             \color "red" f' 4.  
             a' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" g' 8  
             \color "red" d'' 8  
             \color "red" c'' 4.  \fermata  
             bes' 8  
             \bar "|"  %{ end measure 2 %} 
             a' 8  
             c'' 8  
             bes' 4.  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" g' 4  
             \color "blue" f' 4  
             r 8  \fermata  
             c'' 8  
             \bar "|"  %{ end measure 4 %} 
             a' 8  
             c'' 8  
             d'' 4.  
             c'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" bes' 8  
             \color "red" d'' 8  
             \color "red" c'' 4.  \fermata  
             bes' 8  
             \bar "|"  %{ end measure 6 %} 
             a' 8  
             c'' 8  
             bes' 4.  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" g' 4  
             \color "blue" f' 4  
             r 8  \fermata  
             c'' 8  
             \bar "|"  %{ end measure 8 %} 
             a' 8  
             c'' 8  
             d'' 4.  
             c'' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "red" bes' 8  
             \color "red" d'' 8  
             \color "red" c'' 4.  \fermata  
             bes' 8  
             \bar "|"  %{ end measure 10 %} 
             a' 8  
             c'' 8  
             bes' 4.  
             a' 8  
             \bar "|"  %{ end measure 11 %} 
             g' 4  
             f' 4  
             r 8  \fermata  
             \bar "||"  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
              "rule_0" 
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
              "rule_0" 
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
              "rule_0" 
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
