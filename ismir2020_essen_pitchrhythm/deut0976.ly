\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut0976"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 4/4
             \key f \major 
             \key f \major 
             f' 8  
             g' 8  
             \bar "|"  %{ end measure 0 %} 
             a' 4  
             a' 8  
             a' 8  
             a' 8  
             c'' 8  
             bes' 8  
             a' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" c'' 8  
             \color "blue" g' 8  
             \color "blue" g' 4  
             r 4  \fermata  
             g' 8  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             bes' 4  
             bes' 8  
             bes' 8  
             d'' 4  
             \color "blue" c'' 8  
             \color "blue" bes' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" c'' 2  
             r 4  \fermata  
             f' 4  
             \bar "|"  %{ end measure 4 %} 
             d'' 4  
             d'' 8  
             d'' 8  
             f'' 4  
             e'' 8  
             d'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" d'' 8  
             \color "blue" c'' 8  
             \color "blue" c'' 4  
             r 4  \fermata  
             c'' 8  
             f'' 8  
             \bar "|"  %{ end measure 6 %} 
             f'' 4  
             a' 8  
             c'' 8  
             c'' 4  
             \color "blue" bes' 8  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" f' 2  
             r 4  \fermata  
             f' 4  
             \bar "|"  %{ end measure 8 %} 
             d'' 4  
             d'' 8  
             d'' 8  
             f'' 4  
             e'' 8  
             d'' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" d'' 8  
             \color "blue" c'' 8  
             \color "blue" c'' 4  
             r 4  \fermata  
             c'' 8  
             f'' 8  
             \bar "|"  %{ end measure 10 %} 
             f'' 4  
             a' 8  
             c'' 8  
             c'' 4  
             bes' 8  
             g' 8  
             \bar "|"  %{ end measure 11 %} 
             f' 2  
             r 4  \fermata  
             \bar "||"  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_2" 
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
