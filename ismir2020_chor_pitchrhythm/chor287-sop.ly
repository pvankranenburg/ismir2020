\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor287-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \key c \major 
             \key a \minor 
             \time 4/4
             a' 4  
             e' 4  
             a' 4  
             b' 4  
             \bar "|"  %{ end measure 1 %} 
             c'' 4  
             \color "blue" d'' 4  
             \color "blue" b' 2  
             \bar "|"  %{ end measure 2 %} 
             \color "blue" a' 2  \fermata  
             c'' 4  
             b' 4  
             \bar "|"  %{ end measure 3 %} 
             a' 4  
             b' 4  
             \color "blue" c'' 4  
             \color "blue" d'' 4  
             \bar "|"  %{ end measure 4 %} 
             \color "blue" e'' 1  \fermata  
             \bar "|."  %{ end measure 5 %} 
             e'' 4  
             f'' 4  
             g'' 4  
             c'' 4  
             \bar "|"  %{ end measure 6 %} 
             f'' 4  
             \color "blue" e'' 4  
             \color "blue" d'' 2  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" c'' 2  \fermata  
             d'' 4  
             d'' 4  
             \bar "|"  %{ end measure 8 %} 
             e'' 4  
             a' 4  
             d'' 4  
             c'' 4  
             \bar "|"  %{ end measure 9 %} 
             b' 2  
             a' 2  \fermata  
             \bar "||"  %{ end measure 10 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_1" 
               _  
               _  
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
