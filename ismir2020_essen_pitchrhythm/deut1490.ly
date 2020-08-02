\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1490"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 2/4
             \key g \major 
             \key g \major 
             a' 16  
             a' 16  
             \bar "|"  %{ end measure 0 %} 
             a' 8  
             b' 8  
             \color "blue" a' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" a' 4.  \fermata  
             d' 8  
             \bar "|"  %{ end measure 2 %} 
             c'' 8  
             c'' 8  
             a' 8  
             a' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "red" b' 8  
             \color "red" b' 8  
             \color "red" g' 8  \fermata  
             g' 8  
             \bar "|"  %{ end measure 4 %} 
             a' 8  
             a' 8  
             \color "blue" a' 8  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" d'' 4.  \fermata  
             d' 8  
             \bar "|"  %{ end measure 6 %} 
             c'' 8  
             c'' 8  
             a' 8  
             a' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "red" b' 8  
             \color "red" b' 8  
             \color "red" g' 8  \fermata  
             g' 8  
             \bar "|"  %{ end measure 8 %} 
             a' 8  
             a' 8  
             \color "blue" d'' 8  
             \color "blue" d'' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" b' 4  
             r 8  \fermata  
             a' 8  
             \bar "|"  %{ end measure 10 %} 
             a' 8  
             b' 8  
             \color "blue" a' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" a' 4  
             r 8  \fermata  
             a' 8  
             \bar "|"  %{ end measure 12 %} 
             a' 8  
             b' 8  
             \color "blue" a' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "blue" a' 4  
             r 8  \fermata  
             a' 8  
             \bar "|"  %{ end measure 14 %} 
             a' 8  
             b' 8  
             \color "blue" a' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 15 %} 
             \color "blue" a' 4  
             r 8  \fermata  
             a' 8  
             \bar "|"  %{ end measure 16 %} 
             a' 8  
             b' 8  
             \color "blue" a' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 17 %} 
             \color "blue" a' 4  
             r 8  \fermata  
             d' 8  
             \bar "|"  %{ end measure 18 %} 
             c'' 8  
             c'' 8  
             a' 8  
             a' 8  
             \bar "|"  %{ end measure 19 %} 
             \color "red" b' 8  
             \color "red" b' 8  
             \color "red" g' 8  \fermata  
             g' 8  
             \bar "|"  %{ end measure 20 %} 
             a' 8  
             a' 8  
             \color "blue" a' 8  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 21 %} 
             \color "blue" d'' 4.  \fermata  
             d' 8  
             \bar "|"  %{ end measure 22 %} 
             c'' 8  
             c'' 8  
             a' 8  
             a' 8  
             \bar "|"  %{ end measure 23 %} 
             \color "red" b' 8  
             \color "red" b' 8  
             \color "red" g' 8  \fermata  
             g' 8  
             \bar "|"  %{ end measure 24 %} 
             a' 8  
             a' 8  
             d'' 8  
             d'' 8  
             \bar "|"  %{ end measure 25 %} 
             g' 4  
             r 8  \fermata  
             \bar "||"  %{ end measure 26 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_5" 
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
              "rule_0" 
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
              "rule_0" 
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
              "rule_5" 
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
