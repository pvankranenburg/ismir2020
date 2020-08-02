\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor268-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key c \major 
             \key c \major 
             \time 4/4
             c'' 4  
             \bar "|"  %{ end measure 0 %} 
             c'' 4  
             b' 4  
             a' 4  
             g' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" c'' 4  
             \color "blue" d'' 4  
             \color "blue" e'' 4  \fermata  
             e'' 4  ~  
             \bar "|"  %{ end measure 2 %} 
             \set stemRightBeamCount = #1
             e'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             e'' 4  
             e'' 4  
             d'' 4  
             \bar "|"  %{ end measure 3 %} 
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" d'' 8 ]  
             \color "blue" d'' 4  
             \color "blue" c'' 4  \fermata  
             \bar "|."  %{ end measure 4 %} 
             c'' 4  
             \bar "|"  %{ end measure 0 %} 
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" d'' 8 ]  
             \color "red" e'' 4  
             \color "red" d'' 4  
             e'' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" c'' 4  
             \color "blue" b' 4  
             \color "blue" a' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 6 %} 
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             c'' 8 ]  
             b' 4  
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" b' 8 ]  
             \color "red" a' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "red" g' 4  \fermata  
             \color "red" g' 4  
             \color "red" c'' 4  
             c'' 4  
             \bar "|"  %{ end measure 8 %} 
             d'' 4  
             d'' 4  
             \set stemRightBeamCount = #1
             e'' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" d'' 8 ]  
             \color "red" e'' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "red" c'' 4  \fermata  
             \color "red" c'' 4  
             \color "red" f'' 4  
             f'' 4  
             \bar "|"  %{ end measure 10 %} 
             \set stemRightBeamCount = #1
             e'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" d'' 8 ]  
             \color "blue" e'' 4  
             \color "blue" d'' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "red" e'' 4  
             \color "red" e'' 4  
             \color "red" f'' 4  
             f'' 4  
             \bar "|"  %{ end measure 12 %} 
             \set stemRightBeamCount = #1
             g'' 8 [  
             \set stemRightBeamCount = #1
             f'' 16 [  
             \set stemLeftBeamCount = #2
             e'' 16 ]  
             \set stemRightBeamCount = #1
             \color "red" f'' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" g'' 8 ]  
             \color "red" c'' 4  \fermata  
             e'' 4  
             \bar "|"  %{ end measure 13 %} 
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             c'' 8 ]  
             b' 4  
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" b' 8 ]  
             \color "red" a' 4  
             \bar "|"  %{ end measure 14 %} 
             \color "red" g' 4  \fermata  
             g' 4  
             c'' 4  
             b' 4  
             \bar "|"  %{ end measure 15 %} 
             a' 4  
             g' 4  
             \color "red" d'' 4  
             \color "red" e'' 4  
             \bar "|"  %{ end measure 16 %} 
             \color "red" d'' 4  \fermata  
             e'' 4  
             f'' 4  
             e'' 4  
             \bar "|"  %{ end measure 17 %} 
             d'' 4  
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             d'' 8 ]  
             e'' 4  
             d'' 4  
             \bar "|"  %{ end measure 18 %} 
             c'' 2.  \fermata  
             \bar "||"  %{ end measure 19 %} 
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
              "rule_0" 
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
              "Miss" 
               _  
              "rule_3" 
               _  
               _  
               _  
               _  
               _  
               _  
              "Miss" 
               _  
              "rule_3" 
               _  
               _  
               _  
               _  
              "rule_0" 
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
              "Miss" 
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
