\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1112"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 2/4
             \key g \major 
             \key g \major 
             d' 8  
             \bar "|"  %{ end measure 0 %} 
             g' 8  
             fis' 8  
             g' 8  
             \color "red" a' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" b' 4  
             \color "blue" g' 8  
             \color "blue" d' 8  
             \bar "|"  %{ end measure 2 %} 
             \color "blue" a' 4  
             r 8  \fermata  
             d' 8  
             \bar "|"  %{ end measure 3 %} 
             g' 8  
             fis' 8  
             g' 8  
             \color "red" a' 8  
             \bar "|"  %{ end measure 4 %} 
             \color "red" b' 4  
             \color "red" g' 4  \fermata  
             \bar "|"  %{ end measure 5 %} 
             a' 8  
             \color "red" a' 16  
             \color "red" a' 16  
             \color "red" a' 8  
             \color "blue" d'' 16  
             \color "blue" d'' 16  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" b' 4  
             r 8  \fermata  
             b' 8  
             \bar "|"  %{ end measure 7 %} 
             b' 8  
             a' 8  
             g' 8  
             \color "blue" fis' 8  
             \bar "|"  %{ end measure 8 %} 
             \color "blue" fis' 4  
             \color "blue" e' 8  \fermata  
             b 8  
             \bar "|"  %{ end measure 9 %} 
             \color "red" e' 4  
             r 8  
             \color "red" d' 8  
             \bar "|"  %{ end measure 10 %} 
             \color "red" g' 4  
             r 8  
             d' 8  
             \bar "|"  %{ end measure 11 %} 
             b' 4.  \fermata  
             \bar "||"  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
              "rule_33" 
               _  
              "rule_2" 
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
              "rule_14" 
               _  
               _  
              "rule_0" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_33" 
               _  
               _  
               _  
              "rule_33" 
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
