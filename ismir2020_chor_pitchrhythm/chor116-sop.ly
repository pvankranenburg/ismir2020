\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor116-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key d \major 
             \key d \major 
             \time 3/4
             d'' 4  
             \bar "|"  %{ end measure 0 %} 
             d'' 2  
             cis'' 4  
             \bar "|"  %{ end measure 1 %} 
             b' 2  
             a' 4  
             \bar "|"  %{ end measure 2 %} 
             \color "blue" d'' 4  
             \color "blue" e'' 2  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" fis'' 2  \fermata  
             fis'' 4  
             \bar "|"  %{ end measure 4 %} 
             \set stemRightBeamCount = #1
             fis'' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" e'' 8 ]  
             \color "red" fis'' 2  
             \bar "|"  %{ end measure 5 %} 
             \color "red" fis'' 2  
             e'' 4  
             \bar "|"  %{ end measure 6 %} 
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" e'' 8 ]  
             \color "blue" e'' 2  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" d'' 2  \fermata  
             \bar "|."  %{ end measure 8 %} 
             d'' 4  
             \bar "|"  %{ end measure 0 %} 
             d'' 4  
             e'' 4  
             fis'' 4  
             \bar "|"  %{ end measure 9 %} 
             e'' 2  
             \set stemRightBeamCount = #1
             fis'' 8 [  
             \set stemLeftBeamCount = #1
             e'' 8 ]  
             \bar "|"  %{ end measure 10 %} 
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" e'' 8 ]  
             \color "blue" cis'' 2  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" b' 2  \fermata  
             e'' 4  
             \bar "|"  %{ end measure 12 %} 
             e'' 4  
             d'' 4  
             cis'' 4  
             \bar "|"  %{ end measure 13 %} 
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" cis'' 8 ]  
             \color "blue" b' 2  
             \bar "|"  %{ end measure 14 %} 
             \color "blue" a' 2  \fermata  
             a' 4  
             \bar "|"  %{ end measure 15 %} 
             d'' 2  
             d'' 4  
             \bar "|"  %{ end measure 16 %} 
             e'' 2  
             e'' 4  
             \bar "|"  %{ end measure 17 %} 
             fis'' 4  
             \color "red" e'' 4  
             \color "red" fis'' 4  
             \bar "|"  %{ end measure 18 %} 
             \color "red" d'' 2  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 19 %} 
             g'' 2  
             g'' 4  
             \bar "|"  %{ end measure 20 %} 
             \set stemRightBeamCount = #1
             fis'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" e'' 8 ]  
             \color "blue" fis'' 2  
             \bar "|"  %{ end measure 21 %} 
             \color "blue" e'' 2  \fermata  
             e'' 4  
             \bar "|"  %{ end measure 22 %} 
             fis'' 2  
             fis'' 4  
             \bar "|"  %{ end measure 23 %} 
             g'' 2  
             g'' 4  
             \bar "|"  %{ end measure 24 %} 
             a'' 4.  
             \set stemRightBeamCount = #1
             g'' 8 [  
             \set stemLeftBeamCount = #1
             \set stemRightBeamCount = #1
             \color "blue" fis'' 8  
             \set stemLeftBeamCount = #1
             \color "blue" e'' 8 ]  
             \bar "|"  %{ end measure 25 %} 
             \color "blue" d'' 2  \fermata  
             fis'' 4  
             \bar "|"  %{ end measure 26 %} 
             e'' 4  
             d'' 4  
             cis'' 4  
             \bar "|"  %{ end measure 27 %} 
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" cis'' 8 ]  
             \color "blue" b' 2  
             \bar "|"  %{ end measure 28 %} 
             \color "blue" a' 2  \fermata  
             a' 4  
             \bar "|"  %{ end measure 29 %} 
             d'' 2  
             cis'' 4  
             \bar "|"  %{ end measure 30 %} 
             b' 2  
             a' 4  
             \bar "|"  %{ end measure 31 %} 
             \color "blue" e'' 4  
             \color "blue" fis'' 2  
             \bar "|"  %{ end measure 32 %} 
             \color "blue" e'' 2  \fermata  
             fis'' 4  
             \bar "|"  %{ end measure 33 %} 
             g'' 4  
             fis'' 4  
             e'' 4  
             \bar "|"  %{ end measure 34 %} 
             \set stemRightBeamCount = #1
             fis'' 8 [  
             \set stemLeftBeamCount = #1
             g'' 8 ]  
             e'' 2  
             \bar "|"  %{ end measure 35 %} 
             d'' 2  \fermata  
             \bar "||"  %{ end measure 36 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_11" 
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
              "rule_0" 
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
               _  
               _  
              "Miss" 
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
              "rule_11" 
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
