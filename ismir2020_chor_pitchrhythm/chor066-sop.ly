\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor066-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key c \major 
             \key a \minor 
             \time 4/4
             \set stemRightBeamCount = #1
             d' 8 [  
             \set stemLeftBeamCount = #1
             e' 8 ]  
             \bar "|"  %{ end measure 0 %} 
             f' 4  
             g' 4  
             a' 4  
             g' 4  
             \bar "|"  %{ end measure 1 %} 
             c'' 4  
             \set stemRightBeamCount = #1
             \color "red" b' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" a' 8 ]  
             \color "red" a' 4  \fermata  
             g' 4  
             \bar "|"  %{ end measure 2 %} 
             c'' 4  
             b' 4  
             a' 4  
             g' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" f' 4  
             \color "blue" e' 4  
             \color "blue" d' 4  \fermata  
             \bar "|."  %{ end measure 4 %} 
             d' 4  
             \bar "|"  %{ end measure 0 %} 
             \color "red" g' 4  
             \color "red" g' 4  
             \color "red" e' 4  
             a' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" a' 4  
             \color "blue" gis' 4  
             \color "blue" a' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 6 %} 
             d'' 4  
             d'' 4  
             \set stemRightBeamCount = #1
             e'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             c'' 4  
             \bar "|"  %{ end measure 7 %} 
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" c'' 8 ]  
             \color "blue" b' 4  
             \color "blue" a' 4  \fermata  
             b' 4  
             \bar "|"  %{ end measure 8 %} 
             c'' 4  
             b' 4  
             a' 4  
             g' 4  
             \bar "|"  %{ end measure 9 %} 
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" g' 8 ]  
             \color "red" f' 4  
             \color "red" e' 4  \fermata  
             \set stemRightBeamCount = #1
             d' 8 [  
             \set stemLeftBeamCount = #1
             e' 8 ]  
             \bar "|"  %{ end measure 10 %} 
             f' 4  
             g' 4  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             g' 8 ]  
             f' 4  
             \bar "|"  %{ end measure 11 %} 
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" f' 8 ]  
             \color "blue" e' 4  
             \color "blue" d' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 12 %} 
             d'' 4  
             d'' 4  
             e'' 4  
             d'' 4  
             \bar "|"  %{ end measure 13 %} 
             c'' 4  
             b' 4  
             a' 4  \fermata  
             \bar "||"  %{ end measure 14 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_3" 
               _  
               _  
               _  
              "rule_8" 
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
