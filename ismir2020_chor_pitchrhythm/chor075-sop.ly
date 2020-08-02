\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor075-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key f \major 
             \key d \minor 
             \time 4/4
             f' 4  
             \bar "|"  %{ end measure 0 %} 
             f' 4  
             e' 4  
             f' 2  
             \bar "|"  %{ end measure 1 %} 
             a' 4  
             c'' 4  
             bes' 4  
             a' 4  
             \bar "|"  %{ end measure 2 %} 
             \color "red" g' 4  
             \color "red" g' 4  
             \color "red" g' 4  \fermata  
             c' 4  
             \bar "|"  %{ end measure 3 %} 
             \set stemRightBeamCount = #1
             d' 8 [  
             \set stemLeftBeamCount = #1
             e' 8 ]  
             f' 4  
             \color "blue" f' 4  
             \color "blue" e' 4  
             \bar "|"  %{ end measure 4 %} 
             \color "blue" f' 2  \fermata  
             r 4  
             \set stemRightBeamCount = #1
             f' 8 [  
             \set stemLeftBeamCount = #1
             g' 8 ]  
             \bar "|"  %{ end measure 5 %} 
             a' 4  
             g' 4  
             a' 4  
             \color "blue" bes' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" c'' 2  
             \color "blue" g' 4  \fermata  
             g' 4  
             \bar "|"  %{ end measure 7 %} 
             g' 4  
             g' 4  
             g' 4  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 8 %} 
             \color "blue" a' 2  
             \color "blue" a' 4  \fermata  
             f' 4  
             \bar "|"  %{ end measure 9 %} 
             e' 4  
             d' 4  
             d' 4  
             cis' 4  
             \bar "|"  %{ end measure 10 %} 
             d' 2.  \fermata  
             \bar "||"  %{ end measure 11 %} 
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
              "Miss" 
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
              "rule_0" 
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
