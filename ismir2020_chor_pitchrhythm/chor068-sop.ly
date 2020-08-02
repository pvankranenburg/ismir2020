\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor068-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key f \major 
             \key f \major 
             \time 4/4
             f' 4  
             \bar "|"  %{ end measure 0 %} 
             f' 4  
             g' 4  
             a' 4  
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             \bar "|"  %{ end measure 1 %} 
             bes' 4  
             a' 4  
             \color "blue" g' 4.  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 2 %} 
             \color "blue" f' 2  \fermata  
             r 4  
             a' 4  
             \bar "|"  %{ end measure 3 %} 
             bes' 4  
             a' 4  
             g' 4  
             f' 4  
             \bar "|"  %{ end measure 4 %} 
             \color "blue" e' 4  
             \color "blue" f' 4  
             \color "blue" g' 4  \fermata  
             c'' 4  
             \bar "|"  %{ end measure 5 %} 
             bes' 4  
             a' 4  
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             f' 8 ]  
             e' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" f' 4  
             \color "blue" d' 4  
             \color "blue" c' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 7 %} 
             bes' 4  
             a' 4  
             g' 4  
             f' 4  
             \bar "|"  %{ end measure 8 %} 
             a' 4  
             g' 4  
             f' 4  \fermata  
             \bar "||"  %{ end measure 9 %} 
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
              "rule_1" 
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
