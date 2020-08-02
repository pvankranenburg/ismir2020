\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1719"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 2/4
             \key g \major 
             \key g \major 
             d' 8  
             \bar "|"  %{ end measure 0 %} 
             d' 8  
             g' 8  
             g' 8  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" g' 4  
             \color "blue" a' 8  \fermata  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             a' 8  
             b' 8  
             \color "blue" b' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" b' 4  
             r 8  \fermata  
             a' 8  
             \bar "|"  %{ end measure 4 %} 
             b' 8  
             a' 8  
             b' 8  
             \color "red" c'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" d'' 4  
             \color "red" c'' 8  \fermata  
             b' 8  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" a' 4  
             \color "blue" a' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" a' 4  
             r 8  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 8 %} 
             b' 8  
             d'' 8  
             d'' 8  
             \color "blue" d'' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" e'' 4  
             \color "blue" e'' 8  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 10 %} 
             c'' 8  
             b' 8  
             \color "blue" c'' 8  
             \color "blue" e'' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" d'' 4.  \fermata  
             c'' 8  
             \bar "|"  %{ end measure 12 %} 
             \color "red" b' 8.  
             \color "red" a' 16  
             \color "red" b' 8  
             c'' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "red" d'' 8  
             \color "red" c'' 8  
             \color "red" c'' 8  \fermata  
             c'' 8  
             \bar "|"  %{ end measure 14 %} 
             \color "blue" b' 4  
             \color "blue" a' 4  
             \bar "|"  %{ end measure 15 %} 
             \color "blue" g' 4  
             r 8  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 16 %} 
             b' 8  
             d'' 8  
             d'' 8  
             \color "blue" d'' 8  
             \bar "|"  %{ end measure 17 %} 
             \color "blue" e'' 4  
             \color "blue" e'' 8  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 18 %} 
             c'' 8  
             b' 8  
             \color "blue" c'' 8  
             \color "blue" e'' 8  
             \bar "|"  %{ end measure 19 %} 
             \color "blue" d'' 4.  \fermata  
             c'' 8  
             \bar "|"  %{ end measure 20 %} 
             \color "red" b' 8.  
             \color "red" a' 16  
             \color "red" b' 8  
             c'' 8  
             \bar "|"  %{ end measure 21 %} 
             \color "red" d'' 8  
             \color "red" c'' 8  
             \color "red" c'' 8  \fermata  
             c'' 8  
             \bar "|"  %{ end measure 22 %} 
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 23 %} 
             g' 4  
             r 8  \fermata  
             \bar "||"  %{ end measure 24 %} 
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
              "rule_6" 
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
              "rule_13" 
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
              "rule_0" 
               _  
               _  
               _  
              "rule_13" 
               _  
               _  
               _  
              "Miss" 
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
              "rule_25" 
               _  
               _  
               _  
               _  
               _  
              "rule_0" 
               _  
               _  
               _  
              "rule_13" 
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
