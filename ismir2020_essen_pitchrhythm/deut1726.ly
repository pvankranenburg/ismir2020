\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1726"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 4/4
             \key f \major 
             \key f \major 
             c' 4  
             \bar "|"  %{ end measure 0 %} 
             f' 4  
             a' 4  
             a' 8  
             g' 8  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" f' 2  
             \color "blue" c' 4  \fermata  
             f' 8  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             c'' 4  
             c'' 4  
             c'' 8  
             \color "blue" bes' 8  
             \color "blue" bes' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 2  
             r 4  \fermata  
             a' 8  
             bes' 8  
             \bar "|"  %{ end measure 4 %} 
             c'' 4  
             c'' 4  
             c'' 4  
             d'' 8  
             c'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" c'' 8  
             \color "blue" bes' 8  
             \color "blue" bes' 4  
             r 4  \fermata  
             c'' 8  
             bes' 8  
             \bar "|"  %{ end measure 6 %} 
             a' 8  
             a' 8  
             a' 8  
             a' 8  
             c'' 4  
             bes' 8  
             a' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" a' 8  
             \color "blue" g' 8  
             \color "blue" g' 4  
             r 4  \fermata  
             c'' 8  
             bes' 8  
             \bar "|"  %{ end measure 8 %} 
             \color "red" a' 4  
             \color "red" f' 4  
             \color "red" f' 4  
             c'' 8  
             bes' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" a' 4  
             \color "blue" f' 4  
             \color "blue" f' 4  \fermata  
             c'' 8  
             bes' 8  
             \bar "|"  %{ end measure 10 %} 
             a' 8  
             g' 8  
             a' 8  
             bes' 8  
             a' 8  
             g' 8  
             a' 8  
             bes' 8  
             \bar "|"  %{ end measure 11 %} 
             a' 8  
             g' 8  
             \color "red" a' 8  
             \color "red" bes' 8  
             \color "red" c'' 4  \fermata  
             \color "red" d'' 4  
             \bar "|"  %{ end measure 12 %} 
             \color "red" c'' 2  
             \color "red" bes' 4  
             bes' 8  
             \color "blue" bes' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "blue" a' 2  
             \color "blue" g' 4  \fermata  
             g' 4  
             \bar "|"  %{ end measure 14 %} 
             a' 4  
             g' 4  
             a' 4  
             bes' 8  
             bes' 8  
             \bar "|"  %{ end measure 15 %} 
             c'' 2  
             f' 4  \fermata  
             \bar "||"  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
              "rule_15" 
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
              "rule_2" 
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
              "rule_2" 
               _  
               _  
               _  
               _  
              "rule_30" 
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
               _  
               _  
               _  
               _  
              "Miss" 
               _  
               _  
              "rule_16" 
               _  
               _  
               _  
              "rule_16" 
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
