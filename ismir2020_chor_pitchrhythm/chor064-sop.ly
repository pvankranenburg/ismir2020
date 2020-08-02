\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor064-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \clef "treble" 
             \key g \major 
             \key g \major 
             \time 4/4
             g' 4  
             a' 4  
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             g' 4  
             \color "blue" fis' 4  
             \color "blue" e' 4  
             \color "blue" d' 4  \fermata  
             \bar "|"  %{ end measure 2 %} 
             g' 4  
             a' 4  
             b' 4  
             c'' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" b' 4  
             \color "blue" a' 4  
             \color "blue" g' 2  \fermata  
             \bar "|."  %{ end measure 4 %} 
             b' 4  
             c'' 4  
             d'' 4  
             c'' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" b' 4  
             \color "blue" a' 4  
             \color "blue" b' 2  \fermata  
             \bar "|"  %{ end measure 6 %} 
             d'' 4  
             d'' 4  
             e'' 4  
             d'' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" c'' 4  
             \color "blue" b' 4  
             \color "blue" a' 2  \fermata  
             \bar "|"  %{ end measure 8 %} 
             \set stemRightBeamCount = #1
             b' 8 [  
             \set stemLeftBeamCount = #1
             c'' 8 ]  
             \color "red" d'' 4  
             \color "red" c'' 4  
             \color "red" b' 4  
             \bar "|"  %{ end measure 9 %} 
             g' 4  
             \color "blue" a' 4  
             \color "blue" b' 2  
             \bar "|"  %{ end measure 10 %} 
             \color "blue" g' 2  \fermata  
             b' 4  
             d'' 4  
             \bar "|"  %{ end measure 11 %} 
             c'' 4  
             b' 4  
             a' 4  
             b' 4  
             \bar "|"  %{ end measure 12 %} 
             a' 2  
             g' 2  \fermata  
             \bar "||"  %{ end measure 13 %} 
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
              "rule_1" 
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
              "rule_1" 
               _  
               _  
               _  
               _  
              "rule_8" 
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
