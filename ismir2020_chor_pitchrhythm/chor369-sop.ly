\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor369-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \clef "treble" 
             \key aes \major 
             \time 4/4
             f'' 4  
             f'' 4  
             c'' 4  
             des'' 4  
             \bar "|"  %{ end measure 1 %} 
             ees'' 4  
             \set stemRightBeamCount = #1
             des'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" c'' 8 ]  
             \color "blue" c'' 4  
             \color "blue" bes' 4  \fermata  
             \bar "|"  %{ end measure 2 %} 
             des'' 4  
             des'' 4  
             c'' 4  
             bes' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 4  
             \color "blue" bes' 4  
             \color "blue" c'' 2  \fermata  
             \bar "|."  %{ end measure 4 %} 
             c'' 4  
             des'' 4  
             \set stemRightBeamCount = #1
             ees'' 8 [  
             \set stemLeftBeamCount = #1
             des'' 8 ]  
             c'' 4  
             \bar "|"  %{ end measure 5 %} 
             des'' 4  
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" bes' 8 ]  
             \color "blue" bes' 4  
             \color "blue" aes' 4  \fermata  
             \bar "|"  %{ end measure 6 %} 
             des'' 4  
             ees'' 4  
             \set stemRightBeamCount = #1
             \color "red" f'' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" ees'' 8 ]  
             \color "red" des'' 4  
             \bar "|"  %{ end measure 7 %} 
             ges'' 4  
             \color "red" f'' 4  
             \color "red" ees'' 4  
             \color "red" des'' 4  \fermata  
             \bar "|"  %{ end measure 8 %} 
             c'' 4  
             des'' 4  
             ees'' 4  
             f'' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" ees'' 4  
             \color "blue" des'' 4  
             \color "blue" c'' 2  \fermata  
             \bar "|"  %{ end measure 10 %} 
             bes' 4  
             c'' 4  
             des'' 4  
             \set stemRightBeamCount = #1
             ees'' 8 [  
             \set stemLeftBeamCount = #1
             des'' 8 ]  
             \bar "|"  %{ end measure 11 %} 
             c'' 4.  
             c'' 8  
             bes' 2  \fermata  
             \bar "||"  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_2" 
               _  
               _  
               _  
               _  
              "rule_8" 
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
