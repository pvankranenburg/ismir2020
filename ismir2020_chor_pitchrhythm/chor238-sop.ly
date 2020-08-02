\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor238-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \clef "treble" 
             \key g \major 
             \key e \minor 
             \time 4/4
             e' 4  
             e' 4  
             b' 4  
             \set stemRightBeamCount = #1
             b' 8 [  
             \set stemLeftBeamCount = #1
             c'' 8 ]  
             \bar "|"  %{ end measure 1 %} 
             d'' 4  
             b' 4  
             g' 4  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" b' 8 ]  
             \bar "|"  %{ end measure 2 %} 
             \color "red" c'' 2  
             \color "red" b' 2  \fermata  
             \bar "|"  %{ end measure 3 %} 
             a' 4  
             a' 4  
             g' 4  
             a' 4  
             \bar "|"  %{ end measure 4 %} 
             b' 4  
             a' 4  
             g' 4  
             \color "blue" fis' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" e' 2  
             \color "blue" d' 2  \fermata  
             \bar "|"  %{ end measure 6 %} 
             g' 4  
             fis' 4  
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             b' 4  
             \bar "|"  %{ end measure 7 %} 
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" g' 8 ]  
             \color "blue" fis' 4  
             \color "blue" e' 2  \fermata  
             \bar "|"  %{ end measure 8 %} 
             fis' 4  
             \set stemRightBeamCount = #1
             e' 8 [  
             \set stemLeftBeamCount = #1
             fis' 8 ]  
             g' 4  
             fis' 4  
             \bar "|"  %{ end measure 9 %} 
             e' 1  \fermata  
             \bar "||"  %{ end measure 10 %} 
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
              "rule_2" 
               _  
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
