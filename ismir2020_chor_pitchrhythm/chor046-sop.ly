\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor046-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key d \major 
             \key d \major 
             \time 4/4
             d'' 4  
             \bar "|"  %{ end measure 0 %} 
             cis'' 4  
             b' 4  
             cis'' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" b' 4  
             \color "blue" cis'' 4  
             \color "blue" d'' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 2 %} 
             \color "red" d'' 4  
             \color "red" a' 4  
             \color "red" a' 4  
             \set stemRightBeamCount = #1
             fis' 8 [  
             \set stemLeftBeamCount = #1
             g' 8 ]  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 4  
             \color "blue" g' 4  
             \color "blue" fis' 4  \fermata  
             fis' 4  
             \bar "|"  %{ end measure 4 %} 
             b' 4  
             b' 4  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             cis'' 4  
             \bar "|"  %{ end measure 5 %} 
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" cis'' 8 ]  
             \color "blue" b' 4  
             \color "blue" a' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 6 %} 
             cis'' 4  
             b' 4  
             a' 4  
             \set stemRightBeamCount = #1
             b' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             \bar "|"  %{ end measure 7 %} 
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             fis' 8 ]  
             e' 4  
             d' 4  \fermata  
             \bar "||"  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
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
              "rule_3" 
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
