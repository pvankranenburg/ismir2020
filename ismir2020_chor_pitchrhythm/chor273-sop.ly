\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor273-sop"   
  
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
             d'' 4  
             d'' 4  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             cis'' 4  
             \bar "|"  %{ end measure 1 %} 
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" cis'' 8 ]  
             \color "blue" b' 4  
             \color "blue" a' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 2 %} 
             cis'' 4  
             b' 4  
             a' 4  
             \set stemRightBeamCount = #1
             b' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             \bar "|"  %{ end measure 3 %} 
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" fis' 8 ]  
             \color "blue" e' 4  
             \color "blue" d' 4  \fermata  
             \bar "|."  %{ end measure 4 %} 
             d' 4  
             \bar "|"  %{ end measure 0 %} 
             a' 4  
             b' 4  
             \color "red" a' 4  
             \color "red" gis' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "red" a' 2  \fermata  
             \color "red" d' 4  
             a' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "red" b' 4  
             \color "red" cis'' 4  
             \color "red" d'' 4  \fermata  
             cis'' 4  
             \bar "|"  %{ end measure 7 %} 
             d'' 4  
             \color "red" cis'' 4  
             \color "red" b' 2  
             \bar "|"  %{ end measure 8 %} 
             \color "red" a' 4  \fermata  
             b' 4  
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 9 %} 
             \set stemRightBeamCount = #1
             b' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" a' 8 ]  
             \color "blue" g' 4  
             \color "blue" fis' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 10 %} 
             cis'' 4  
             b' 4  
             a' 4  
             \set stemRightBeamCount = #1
             b' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             \bar "|"  %{ end measure 11 %} 
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             fis' 8 ]  
             e' 4  
             d' 4  \fermata  
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
              "rule_0" 
               _  
               _  
               _  
               _  
               _  
              "Miss" 
              "rule_0" 
               _  
               _  
               _  
              "Miss" 
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
