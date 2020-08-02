\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor035-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \clef "treble" 
             \key a \major 
             \key a \major 
             \time 4/4
             a' 4  
             b' 4  
             \set stemRightBeamCount = #1
             cis'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             e'' 4  
             \bar "|"  %{ end measure 1 %} 
             a' 4  
             \color "red" gis' 4  
             \color "red" fis' 4  
             \color "red" e' 4  \fermata  
             \bar "|"  %{ end measure 2 %} 
             fis' 4  
             gis' 4  
             a' 4  
             b' 4  
             \bar "|"  %{ end measure 3 %} 
             \set stemRightBeamCount = #1
             cis'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" d'' 8 ]  
             \color "blue" b' 4  
             \color "blue" a' 2  \fermata  
             \bar "|."  %{ end measure 4 %} 
             cis'' 4  
             cis'' 4  
             b' 4  
             cis'' 4  
             \bar "|"  %{ end measure 5 %} 
             d'' 4  
             \set stemRightBeamCount = #1
             cis'' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             \set stemRightBeamCount = #1
             \color "red" b' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" a' 8 ]  
             \color "red" b' 4  \fermata  
             \bar "|"  %{ end measure 6 %} 
             fis' 4  
             gis' 4  
             a' 4  
             b' 4  
             \bar "|"  %{ end measure 7 %} 
             \set stemRightBeamCount = #1
             cis'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             b' 4  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             gis' 8 ]  
             a' 4  \fermata  
             \bar "||"  %{ end measure 8 %} 
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
