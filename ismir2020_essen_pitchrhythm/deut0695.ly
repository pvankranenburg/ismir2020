\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut0695"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 4/4
             \key g \major 
             \key g \major 
             d' 4  
             \bar "|"  %{ end measure 0 %} 
             g' 4  
             g' 4  
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             b' 8  
             a' 8  
             \color "blue" g' 8  
             \color "blue" a' 8  
             \color "blue" g' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 2 %} 
             b' 4  
             b' 8  
             b' 8  
             d'' 8  
             c'' 8  
             \color "blue" b' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" d'' 2  
             r 4  \fermata  
             g' 8  
             b' 8  
             \bar "|"  %{ end measure 4 %} 
             d'' 4  
             d'' 4  
             d'' 4  
             \color "blue" g'' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" e'' 2  
             \color "blue" d'' 4  \fermata  
             g' 8  
             b' 8  
             \bar "|"  %{ end measure 6 %} 
             d'' 8  
             d'' 8  
             d'' 8  
             d'' 8  
             d'' 8  
             \color "blue" c'' 8  
             \color "blue" c'' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" b' 2  
             r 4  \fermata  
             g' 8  
             b' 8  
             \bar "|"  %{ end measure 8 %} 
             d'' 4  
             d'' 4  
             d'' 4  
             \color "blue" g'' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" e'' 2  
             \color "blue" d'' 4  \fermata  
             g' 8  
             b' 8  
             \bar "|"  %{ end measure 10 %} 
             d'' 8  
             d'' 8  
             d'' 8  
             d'' 8  
             d'' 8  
             c'' 8  
             c'' 4  
             \bar "|"  %{ end measure 11 %} 
             b' 2  
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
              "rule_10" 
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
              "rule_15" 
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
