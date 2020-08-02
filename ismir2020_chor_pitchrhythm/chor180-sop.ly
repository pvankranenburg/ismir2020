\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor180-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \clef "treble" 
             \key c \major 
             \time 4/4
             a' 4  
             \bar "|"  %{ end measure 0 %} 
             c'' 4  
             a' 4  
             bes' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" g' 4  
             \color "blue" g' 4  
             \color "blue" f' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 2 %} 
             b' 4  
             c'' 4  
             d'' 4  
             \color "blue" c'' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" b' 2  
             \color "blue" a' 4  \fermata  
             e' 4  
             \bar "|"  %{ end measure 4 %} 
             \color "red" f' 4  
             \color "red" f' 4  
             \color "red" g' 4  
             g' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" a' 4  
             \color "blue" a' 4  
             \color "blue" f' 4  \fermata  
             d' 4  
             \bar "|"  %{ end measure 6 %} 
             e' 4  
             f' 4  
             g' 4  
             f' 4  
             \bar "|"  %{ end measure 7 %} 
             e' 2  
             d' 4  \fermata  
             \bar "||"  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_11" 
               _  
               _  
               _  
              "rule_3" 
               _  
               _  
               _  
              "rule_8" 
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
