\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1157"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*12 
             \time 4/4
             \key f \major 
             \key f \major 
             c' 8  
             f' 8  
             \color "red" a' 8  
             \bar "|"  %{ end measure 0 %} 
             \color "red" c'' 4  
             \color "red" c'' 4  
             r 8  
             c'' 8  
             f'' 8  
             \color "blue" g'' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" f'' 4  
             \color "blue" e'' 4  
             r 8  \fermata  
             bes' 8  
             bes' 8  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             g' 8  
             e'' 8  
             e'' 4  
             r 8  
             d'' 8  
             \color "blue" c'' 8  
             \color "blue" bes' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 2  
             r 8  \fermata  
             f' 8  
             f'' 8  
             \color "red" e'' 8  
             \bar "|"  %{ end measure 4 %} 
             \color "red" e'' 4  
             \color "red" d'' 4  
             r 8  
             d'' 8  
             \color "blue" f'' 8  
             \color "blue" d'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" c'' 2  
             r 8  \fermata  
             c'' 8  
             bes' 8  
             a' 8  
             \bar "|"  %{ end measure 6 %} 
             \color "red" g' 8  
             \color "red" d'' 8  
             \color "red" d'' 4  
             r 8  
             d'' 8  
             \color "blue" c'' 8  
             \color "blue" bes' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" a' 2  
             r 8  \fermata  
             f' 8  
             f'' 8  
             \color "red" e'' 8  
             \bar "|"  %{ end measure 8 %} 
             \color "red" e'' 4  
             \color "red" d'' 4  
             r 8  
             d'' 8  
             \color "blue" f'' 8  
             \color "blue" d'' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" c'' 2  
             r 8  \fermata  
             c'' 8  
             bes' 8  
             a' 8  
             \bar "|"  %{ end measure 10 %} 
             \color "red" g' 8  
             \color "red" d'' 8  
             \color "red" d'' 4  
             r 8  
             d'' 8  
             c'' 8  
             bes' 8  
             \bar "|"  %{ end measure 11 %} 
             a' 2  
             r 8  \fermata  
             \bar "||"  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
              "rule_34" 
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
              "rule_0" 
               _  
               _  
               _  
               _  
              "rule_0" 
               _  
               _  
               _  
              "rule_0" 
               _  
               _  
               _  
               _  
               _  
              "rule_13" 
               _  
               _  
               _  
              "rule_0" 
               _  
               _  
               _  
               _  
              "rule_0" 
               _  
               _  
               _  
              "rule_0" 
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
