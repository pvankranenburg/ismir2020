\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor199-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \clef "treble" 
             \key f \major 
             \time 3/4
             g' 4  
             \bar "|"  %{ end measure 0 %} 
             \color "red" a' 2  
             \color "red" g' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "red" f' 2  
             \color "blue" d' 4  
             \bar "|"  %{ end measure 2 %} 
             \color "blue" f' 2.  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" g' 2  \fermata  
             a' 4  
             \bar "|"  %{ end measure 4 %} 
             bes' 2  
             d'' 4  
             \bar "|"  %{ end measure 5 %} 
             c'' 2  
             \color "blue" bes' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" a' 2.  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" g' 2  \fermata  
             \bar "|."  %{ end measure 8 %} 
             c'' 4  
             \bar "|"  %{ end measure 0 %} 
             c'' 2  
             c'' 4  
             \bar "|"  %{ end measure 9 %} 
             d'' 2  
             c'' 4  
             \bar "|"  %{ end measure 10 %} 
             bes' 4  
             \color "red" a' 4  
             \color "red" g' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "red" f' 2  \fermata  
             f' 4  
             \bar "|"  %{ end measure 12 %} 
             bes' 2  
             a' 4  
             \bar "|"  %{ end measure 13 %} 
             bes' 2  
             c'' 4  
             \bar "|"  %{ end measure 14 %} 
             d'' 2  
             c'' 4  
             \bar "|"  %{ end measure 15 %} 
             bes' 4.  
             \color "blue" a' 8  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 16 %} 
             \color "red" fis' 2  \fermata  
             \color "red" a' 4  
             \bar "|"  %{ end measure 17 %} 
             \color "red" bes' 2  
             d'' 4  
             \bar "|"  %{ end measure 18 %} 
             c'' 2  
             bes' 4  
             \bar "|"  %{ end measure 19 %} 
             a' 2.  
             \bar "|"  %{ end measure 20 %} 
             g' 2  \fermata  
             \bar "||"  %{ end measure 21 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
              "rule_8" 
               _  
              "rule_10" 
              "rule_11" 
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
              "Miss" 
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
              "rule_2" 
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
