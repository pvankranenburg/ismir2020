\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1557"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \time 3/8
             \key f \major 
             \key f \major 
             c'' 8.  
             bes' 16  
             a' 8  
             \bar "|"  %{ end measure 1 %} 
             c'' 8.  
             bes' 16  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             g' 8  
             \color "red" f' 8  
             \color "red" g' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "red" f' 4  \fermata  
             a' 8  
             \bar "|"  %{ end measure 4 %} 
             g' 8  
             g' 8  
             g' 8  
             \bar "|"  %{ end measure 5 %} 
             g' 8  
             a' 8  
             bes' 8  
             \bar "|"  %{ end measure 6 %} 
             \color "red" a' 4  
             \color "red" bes' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "red" c'' 4  \fermata  
             a' 8  
             \bar "|"  %{ end measure 8 %} 
             g' 8  
             g' 8  
             g' 8  
             \bar "|"  %{ end measure 9 %} 
             g' 8  
             a' 8  
             bes' 8  
             \bar "|"  %{ end measure 10 %} 
             \color "blue" a' 4  
             \color "blue" bes' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" c'' 4.  \fermata  
             \bar "|"  %{ end measure 12 %} 
             c'' 8.  
             bes' 16  
             a' 8  
             \bar "|"  %{ end measure 13 %} 
             c'' 8.  
             bes' 16  
             a' 8  
             \bar "|"  %{ end measure 14 %} 
             g' 8  
             f' 8  
             g' 8  
             \bar "|"  %{ end measure 15 %} 
             f' 4.  \fermata  
             \bar "||"  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_4" 
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
