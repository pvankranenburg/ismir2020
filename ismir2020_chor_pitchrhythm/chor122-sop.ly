\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor122-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key bes \major 
             \time 4/4
             g' 4  
             \bar "|"  %{ end measure 0 %} 
             c'' 4  
             b' 4  
             c'' 4  
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             ees'' 8 ]  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" bes' 4.  
             \color "blue" aes' 8  
             \color "blue" g' 4  \fermata  
             g' 4  
             \bar "|"  %{ end measure 2 %} 
             \color "red" f' 4  
             \color "red" bes' 4  
             \color "red" g' 4  
             c'' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "red" b' 4.  
             \color "red" c'' 8  
             \color "red" d'' 4  \fermata  
             ees'' 4  
             \bar "|"  %{ end measure 4 %} 
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             c'' 8 ]  
             \set stemRightBeamCount = #1
             bes' 8 [  
             \set stemLeftBeamCount = #1
             aes' 8 ]  
             g' 4  
             \set stemRightBeamCount = #1
             aes' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" bes' 8 ]  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" f' 2  
             \color "blue" ees' 4  \fermata  
             ees'' 4  
             \bar "|"  %{ end measure 6 %} 
             d'' 4  
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             bes' 8 ]  
             bes' 4  
             c'' 4  
             \bar "|"  %{ end measure 7 %} 
             bes' 4  
             \set stemRightBeamCount = #1
             \color "red" aes' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" g' 8 ]  
             \color "red" g' 4  \fermata  
             f' 4  
             \bar "|"  %{ end measure 8 %} 
             \color "red" bes' 4.  
             \color "red" aes' 8  
             \color "red" g' 4  
             \set stemRightBeamCount = #1
             ees'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             \bar "|"  %{ end measure 9 %} 
             \color "red" b' 4.  
             \color "red" c'' 8  
             \color "red" d'' 4  \fermata  
             ees'' 4  
             \bar "|"  %{ end measure 10 %} 
             \set stemRightBeamCount = #1
             f'' 8 [  
             \set stemLeftBeamCount = #1
             ees'' 8 ]  
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             c'' 8 ]  
             b' 4  
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" d'' 4.  
             \color "blue" c'' 8  
             \color "blue" c'' 4  \fermata  
             ees'' 4  
             \bar "|"  %{ end measure 12 %} 
             \set stemRightBeamCount = #1
             ees'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             g'' 4  
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             \bar "|"  %{ end measure 13 %} 
             b' 4.  
             c'' 8  
             c'' 4  \fermata  
             \bar "||"  %{ end measure 14 %} 
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
              "rule_2" 
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
              "Miss" 
               _  
               _  
               _  
              "rule_8" 
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
              "rule_8" 
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
