\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor094-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key bes \major 
             \key g \minor 
             \time 4/4
             g' 4  
             \bar "|"  %{ end measure 0 %} 
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" a' 8 ]  
             \color "red" bes' 4  
             \color "red" a' 4  
             d'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "red" c'' 4  
             \color "red" bes' 4  
             \color "red" a' 4  \fermata  
             \set stemRightBeamCount = #1
             bes' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             \bar "|"  %{ end measure 2 %} 
             g' 4  
             d'' 4  
             c'' 4  
             d'' 4  
             \bar "|"  %{ end measure 3 %} 
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" a' 8 ]  
             \color "red" b' 4  
             \color "red" c'' 4  \fermata  
             bes' 4  
             \bar "|"  %{ end measure 4 %} 
             a' 4  
             d'' 4  
             \color "blue" c'' 4  
             \color "blue" bes' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" a' 2  \fermata  
             r 4  
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             \bar "|"  %{ end measure 6 %} 
             \color "red" bes' 4  
             \color "red" bes' 4  
             \color "red" c'' 4  
             c'' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" d'' 4  
             \color "blue" d'' 4  
             \color "blue" bes' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 8 %} 
             c'' 4  
             bes' 4  
             a' 4  
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             \bar "|"  %{ end measure 9 %} 
             bes' 4  
             a' 4  
             g' 4  \fermata  
             \bar "||"  %{ end measure 10 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
              "rule_0" 
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
              "Miss" 
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
