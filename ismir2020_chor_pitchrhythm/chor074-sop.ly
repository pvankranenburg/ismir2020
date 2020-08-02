\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor074-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key f \major 
             \key f \major 
             \time 4/4
             a' 4  
             \bar "|"  %{ end measure 0 %} 
             d'' 4  
             c'' 4  
             bes' 4  
             \color "blue" a' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" g' 2  
             \color "blue" a' 4  \fermata  
             e'' 4  
             \bar "|"  %{ end measure 2 %} 
             f'' 4  
             f'' 4  
             \set stemRightBeamCount = #1
             e'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" d'' 8 ]  
             \color "blue" e'' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" d'' 2.  \fermata  
             \bar "|."  %{ end measure 4 %} 
             f'' 4  
             \bar "|"  %{ end measure 0 %} 
             \set stemRightBeamCount = #1
             e'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             c'' 4  
             d'' 4  
             \color "blue" e'' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" f'' 2  
             \color "blue" f'' 4  \fermata  
             c'' 4  
             \bar "|"  %{ end measure 6 %} 
             d'' 4  
             c'' 4  
             \set stemRightBeamCount = #1
             bes' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" a' 8 ]  
             \color "blue" bes' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" a' 2.  \fermata  
             f'' 4  
             \bar "|"  %{ end measure 8 %} 
             \set stemRightBeamCount = #1
             e'' 8 [  
             \set stemLeftBeamCount = #1
             f'' 8 ]  
             g'' 4  
             f'' 4  
             \color "blue" e'' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" d'' 2  
             \color "blue" e'' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 10 %} 
             \color "red" bes' 4  
             \color "red" a' 4  
             \color "red" g' 4  
             c'' 4  
             \bar "|"  %{ end measure 11 %} 
             a' 2.  \fermata  
             \bar "||"  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_2" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_11" 
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
              "rule_11" 
               _  
               _  
               _  
              "rule_8" 
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
