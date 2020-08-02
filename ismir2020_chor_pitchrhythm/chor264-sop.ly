\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor264-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \clef "treble" 
             \key bes \major 
             \key bes \major 
             \time 4/4
             d'' 4  
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             ees'' 8 ]  
             \set stemRightBeamCount = #1
             f'' 8 [  
             \set stemLeftBeamCount = #1
             ees'' 8 ]  
             d'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "red" c'' 4.  
             \color "red" c'' 8  
             \color "red" c'' 2  \fermata  
             \bar "|"  %{ end measure 2 %} 
             d'' 4  
             \set stemRightBeamCount = #1
             ees'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             \color "red" c'' 4.  
             \color "red" bes' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "red" bes' 2  \fermata  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             g' 8 ]  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             bes' 8 ]  
             \bar "|"  %{ end measure 4 %} 
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             bes' 8 ]  
             a' 4  
             \color "red" g' 4.  
             \color "red" g' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" g' 2  \fermata  
             a' 4  
             \set stemRightBeamCount = #1
             bes' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" g' 4.  
             \color "blue" f' 8  
             \color "blue" f' 2  \fermata  
             \bar "|"  %{ end measure 7 %} 
             d'' 4  
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             ees'' 8 ]  
             f'' 4  
             \set stemRightBeamCount = #1
             ees'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             \bar "|"  %{ end measure 8 %} 
             \color "red" c'' 4.  
             \color "red" c'' 8  
             \color "red" c'' 2  \fermata  
             \bar "|"  %{ end measure 9 %} 
             d'' 4  
             \set stemRightBeamCount = #1
             ees'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             \color "blue" c'' 4.  
             \color "blue" bes' 8  
             \bar "|"  %{ end measure 10 %} 
             \color "blue" bes' 2  \fermata  
             \set stemRightBeamCount = #1
             ees'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             \set stemRightBeamCount = #1
             ees'' 8 [  
             \set stemLeftBeamCount = #1
             f'' 8 ]  
             \bar "|"  %{ end measure 11 %} 
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             c'' 8 ]  
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             ees'' 8 ]  
             c'' 4.  
             bes' 8  
             \bar "|"  %{ end measure 12 %} 
             bes' 1  \fermata  
             \bar "||"  %{ end measure 13 %} 
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
              "Miss" 
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
               _  
              "Miss" 
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
