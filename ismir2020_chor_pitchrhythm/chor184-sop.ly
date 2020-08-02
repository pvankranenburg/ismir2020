\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor184-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key c \major 
             \time 4/4
             a' 4  
             \bar "|"  %{ end measure 0 %} 
             gis' 4  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             c'' 4  
             d'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" c'' 4  
             \color "blue" b' 4  
             \color "blue" a' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 2 %} 
             f' 4  
             g' 4  
             a' 4  
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             f' 8 ]  
             \bar "|"  %{ end measure 3 %} 
             \set stemRightBeamCount = #1
             e' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" d' 8 ]  
             \color "blue" e' 4  
             \color "blue" d' 2  \fermata  
             \bar "|."  %{ end measure 4 %} 
             \set stemRightBeamCount = #1
             d' 8 [  
             \set stemLeftBeamCount = #1
             e' 8 ]  
             f' 4  
             g' 4  
             \set stemRightBeamCount = #1
             d' 8 [  
             \set stemLeftBeamCount = #1
             e' 8 ]  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" f' 4  
             \color "blue" g' 4  
             \color "blue" a' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 6 %} 
             d'' 4  
             cis'' 4  
             d'' 4  
             \set stemRightBeamCount = #1
             e'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             \bar "|"  %{ end measure 7 %} 
             \color "red" c'' 4  
             \color "red" b' 4  
             \color "red" a' 4  \fermata  
             b' 4  
             \bar "|"  %{ end measure 8 %} 
             c'' 4  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             bes' 8 ]  
             c'' 4  
             g' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" f' 4  
             \color "blue" e' 4  
             \color "blue" d' 2  \fermata  
             \bar "|"  %{ end measure 10 %} 
             a' 4  
             g' 4  
             f' 2  
             \bar "|"  %{ end measure 11 %} 
             e' 2  
             d' 2  \fermata  
             \bar "||"  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_3" 
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
              "rule_7" 
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
