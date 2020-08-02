\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1804"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*12 
             \time 3/4
             \key f \major 
             \key f \major 
             f' 8  
             f' 8  
             a' 8  
             \bar "|"  %{ end measure 0 %} 
             c'' 4.  
             c'' 8  
             \color "blue" d'' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" a' 4  
             r 8  \fermata  
             c'' 8  
             c'' 8  
             g' 8  
             \bar "|"  %{ end measure 2 %} 
             bes' 4  
             d'' 8  
             d'' 8  
             \color "blue" c'' 8.  
             \color "blue" bes' 16  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 4  
             r 8  \fermata  
             c' 8  
             f' 8  
             a' 8  
             \bar "|"  %{ end measure 4 %} 
             c'' 4.  
             c'' 8  
             c'' 8  
             \color "blue" f'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" d'' 4  
             \color "blue" c'' 8  \fermata  
             bes' 8  
             \color "red" a' 8  
             \color "red" c'' 8  
             \bar "|"  %{ end measure 6 %} 
             \color "red" bes' 4.  
             bes' 8  
             bes' 8  
             d'' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "red" c'' 8  
             \color "red" bes' 8  
             \color "red" a' 8  \fermata  
             g' 8  
             f' 8  
             g' 8  
             \bar "|"  %{ end measure 8 %} 
             a' 8  
             bes' 8  
             c'' 4  
             \color "blue" d'' 8.  
             \color "blue" c'' 16  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" a' 4  
             r 8  \fermata  
             c'' 8  
             c'' 8  
             g' 16  
             a' 16  
             \bar "|"  %{ end measure 10 %} 
             bes' 4  
             d'' 8  
             d'' 8  
             c'' 8  
             bes' 8  
             \bar "|"  %{ end measure 11 %} 
             a' 4  
             r 8  \fermata  
             \bar "||"  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_0" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_20" 
               _  
               _  
               _  
              "rule_0" 
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
