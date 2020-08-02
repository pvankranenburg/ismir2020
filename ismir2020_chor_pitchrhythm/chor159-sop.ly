\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor159-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \clef "treble" 
             \key g \major 
             \key g \major 
             \time 4/4
             d' 4  
             \bar "|"  %{ end measure 0 %} 
             g' 4  
             a' 4  
             \color "blue" b' 4  
             \color "blue" a' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" g' 2  \fermata  
             r 4  
             a' 4  
             \bar "|"  %{ end measure 2 %} 
             b' 4  
             c'' 4  
             \color "blue" b' 4  
             \color "blue" a' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" g' 2  \fermata  
             r 4  
             b' 4  
             \bar "|"  %{ end measure 4 %} 
             d'' 4  
             d'' 4  
             \color "blue" c'' 4  
             \color "blue" b' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" a' 2  \fermata  
             r 4  
             b' 4  
             \bar "|"  %{ end measure 6 %} 
             g' 4  
             c'' 4  
             b' 4  
             \color "blue" a' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" g' 2  
             \color "blue" a' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 8 %} 
             b' 4  
             c'' 4  
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 9 %} 
             g' 2.  \fermata  
             \bar "||"  %{ end measure 10 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
              "rule_1" 
               _  
               _  
               _  
               _  
               _  
              "rule_1" 
               _  
               _  
               _  
               _  
               _  
              "rule_1" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_3" 
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
