\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor030-sop"   
  
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
             b' 4  
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             b' 4  
             \set stemRightBeamCount = #1
             e' 8 [  
             \set stemLeftBeamCount = #1
             fis' 8 ]  
             g' 4  
             g' 4  
             \bar "|"  %{ end measure 2 %} 
             \color "blue" g' 4  
             \color "blue" fis' 4  
             \color "blue" e' 2  \fermata  
             \bar "|"  %{ end measure 3 %} 
             g' 4  
             g' 4  
             g' 4  
             e' 4  
             \bar "|"  %{ end measure 4 %} 
             g' 4  
             a' 4  
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" g' 4  
             \color "blue" fis' 4  
             \color "blue" e' 2  \fermata  
             \bar "|"  %{ end measure 6 %} 
             g' 4  
             g' 4  
             g' 4  
             e' 4  
             \bar "|"  %{ end measure 7 %} 
             g' 4  
             a' 4  
             \color "blue" b' 4  
             \color "blue" a' 4  
             \bar "|"  %{ end measure 8 %} 
             \color "blue" g' 2  \fermata  
             r 4  
             d'' 4  
             \bar "|"  %{ end measure 9 %} 
             e'' 4  
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             c'' 8 ]  
             \set stemRightBeamCount = #1
             b' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             \bar "|"  %{ end measure 10 %} 
             b' 4  
             a' 4  
             g' 4  
             fis' 4  
             \bar "|"  %{ end measure 11 %} 
             e' 2.  \fermata  
             r 4  
             \bar "||"  %{ end measure 12 %} 
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
              "rule_1" 
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
              "rule_1" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_7" 
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
