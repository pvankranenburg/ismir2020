\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1555"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*12 
             \time 3/4
             \key f \major 
             \key f \major 
             f' 8  
             f' 8  
             g' 8  
             \bar "|"  %{ end measure 0 %} 
             a' 4.  
             bes' 8  
             \color "blue" g' 8  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" f' 4  
             r 8  \fermata  
             a' 8  
             a' 8  
             bes' 8  
             \bar "|"  %{ end measure 2 %} 
             c'' 4.  
             d'' 8  
             \color "red" bes' 8  
             \color "red" c'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "red" a' 2  
             r 4  \fermata  
             \bar "|"  %{ end measure 4 %} 
             f' 8  
             a' 8  
             c'' 4  
             c'' 4  
             \bar "|"  %{ end measure 5 %} 
             f'' 8  
             \color "red" d'' 8  
             \color "red" c'' 4  
             \color "red" c'' 8  \fermata  
             f' 8  
             \bar "|"  %{ end measure 6 %} 
             f' 8  
             g' 8  
             a' 4  
             \color "blue" a' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" g' 4  
             \color "blue" f' 4  
             r 4  \fermata  
             \bar "|"  %{ end measure 8 %} 
             f' 8  
             a' 8  
             c'' 4  
             c'' 4  
             \bar "|"  %{ end measure 9 %} 
             f'' 8  
             \color "red" d'' 8  
             \color "red" c'' 4  
             \color "red" c'' 8  \fermata  
             f' 8  
             \bar "|"  %{ end measure 10 %} 
             f' 8  
             g' 8  
             a' 4  
             \color "blue" a' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" g' 4  
             \color "blue" f' 4  
             r 4  \fermata  
             \bar "|"  %{ end measure 12 %} 
             f' 4  
             f' 4  
             g' 4  
             \bar "|"  %{ end measure 13 %} 
             \color "red" a' 4.  
             \color "red" g' 8  
             \color "red" f' 4  \fermata  
             \bar "|"  %{ end measure 14 %} 
             a' 4  
             a' 4  
             bes' 4  
             \bar "|"  %{ end measure 15 %} 
             \color "red" c'' 4.  
             \color "red" bes' 8  
             \color "red" a' 4  \fermata  
             \bar "|"  %{ end measure 16 %} 
             f' 8  
             a' 8  
             c'' 4  
             c'' 4  
             \bar "|"  %{ end measure 17 %} 
             f'' 8  
             d'' 8  
             \color "red" c'' 8  
             \color "red" bes' 8  
             \color "red" c'' 4  \fermata  
             \bar "|"  %{ end measure 18 %} 
             f' 8  
             a' 8  
             c'' 4  
             c'' 4  
             \bar "|"  %{ end measure 19 %} 
             f'' 8  
             d'' 8  
             \color "red" c'' 8  
             \color "red" bes' 8  
             \color "red" c'' 4  \fermata  
             \bar "|"  %{ end measure 20 %} 
             f' 8  
             g' 8  
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 21 %} 
             g' 4  
             f' 8  \fermata  
             \bar "||"  %{ end measure 22 %} 
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
              "rule_34" 
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
              "Miss" 
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
              "Miss" 
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
