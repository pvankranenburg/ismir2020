\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor341-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key a \major 
             \key a \major 
             \time 4/4
             a' 4  
             \bar "|"  %{ end measure 0 %} 
             a' 4  
             a' 4  
             a' 4  
             b' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" g' 4  
             \color "blue" fis' 4  
             \color "blue" e' 4  \fermata  
             b' 4  
             \bar "|"  %{ end measure 2 %} 
             cis'' 4  
             b' 4  
             a' 4  
             \set stemRightBeamCount = #1
             gis' 8 [  
             \set stemLeftBeamCount = #1
             fis' 8 ]  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" gis' 4  
             \color "blue" fis' 4  
             \color "blue" e' 4  \fermata  
             e' 4  
             \bar "|"  %{ end measure 4 %} 
             a' 4  
             a' 4  
             a' 4  
             b' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" gis' 4  
             \color "blue" fis' 4  
             \color "blue" e' 4  \fermata  
             b' 4  
             \bar "|"  %{ end measure 6 %} 
             cis'' 4  
             b' 4  
             a' 4  
             \set stemRightBeamCount = #1
             gis' 8 [  
             \set stemLeftBeamCount = #1
             fis' 8 ]  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" gis' 4  
             \color "blue" fis' 4  
             \color "blue" e' 4  \fermata  
             e'' 4  
             \bar "|"  %{ end measure 8 %} 
             d'' 4  
             cis'' 4  
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 9 %} 
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" b' 8 ]  
             \color "blue" cis'' 4  
             \color "blue" b' 4  \fermata  
             cis'' 4  
             \bar "|"  %{ end measure 10 %} 
             d'' 4  
             cis'' 4  
             \color "blue" b' 4  
             \color "blue" ais' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" b' 2.  \fermata  
             e' 4  
             \bar "|"  %{ end measure 12 %} 
             a' 4  
             b' 4  
             cis'' 4  
             d'' 4  
             \bar "|"  %{ end measure 13 %} 
             e'' 4  
             \set stemRightBeamCount = #1
             \color "blue" d'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" cis'' 8 ]  
             \color "blue" b' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 14 %} 
             cis'' 4  
             b' 4  
             e'' 4.  
             d'' 8  
             \bar "|"  %{ end measure 15 %} 
             \set stemRightBeamCount = #1
             cis'' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             cis'' 4  
             b' 4  
             \bar "|"  %{ end measure 16 %} 
             a' 2.  \fermata  
             \bar "||"  %{ end measure 17 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_3" 
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
              "rule_0" 
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
              "rule_2" 
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
