\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor362-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key g \major 
             \key g \major 
             \time 4/4
             g' 4  
             \bar "|"  %{ end measure 0 %} 
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             b' 4  
             a' 4  
             g' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "red" a' 4  
             \color "red" a' 4  
             \color "red" b' 4  \fermata  
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             \bar "|"  %{ end measure 2 %} 
             b' 4  
             c'' 4  
             d'' 4  
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             \bar "|"  %{ end measure 3 %} 
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" g' 8 ]  
             \color "blue" a' 4  
             \color "blue" g' 4  \fermata  
             \bar "|."  %{ end measure 4 %} 
             b' 4  
             \bar "|"  %{ end measure 0 %} 
             b' 4  
             a' 4  
             g' 4  
             fis' 4  
             \bar "|"  %{ end measure 5 %} 
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" a' 8 ]  
             \color "blue" b' 4  
             \color "blue" a' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 6 %} 
             g' 4  
             fis' 4  
             g' 4  
             d' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "red" g' 4  
             \color "red" a' 4  
             \color "red" b' 4  \fermata  
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             \bar "|"  %{ end measure 8 %} 
             b' 4  
             c'' 4  
             d'' 4  
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             \bar "|"  %{ end measure 9 %} 
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             g' 8 ]  
             a' 4  
             g' 4  \fermata  
             \bar "||"  %{ end measure 10 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_0" 
               _  
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
