\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor106-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \clef "treble" 
             \key a \major 
             \key a \major 
             \time 4/4
             cis'' 4  
             b' 4  
             a' 4  
             b' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" cis'' 4  
             \color "blue" dis'' 4  
             \color "blue" e'' 2  \fermata  
             \bar "|"  %{ end measure 2 %} 
             fis'' 4  
             e'' 4  
             d'' 4  
             \set stemRightBeamCount = #1
             cis'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" b' 8 ]  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" b' 2  
             \color "blue" a' 2  \fermata  
             \bar "|"  %{ end measure 4 %} 
             cis'' 4  
             e'' 4  
             d'' 4  
             cis'' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" b' 4  
             \color "blue" a' 4  
             \color "blue" gis' 2  \fermata  
             \bar "|"  %{ end measure 6 %} 
             a' 4  
             b' 4  
             cis'' 4  
             \set stemRightBeamCount = #1
             cis'' 8 [  
             \set stemRightBeamCount = #1
             d'' 16 [  
             \set stemLeftBeamCount = #2
             \color "blue" e'' 16 ]  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" d'' 2  
             \color "blue" cis'' 2  \fermata  
             \bar "|"  %{ end measure 8 %} 
             cis'' 4  
             d'' 4  
             e'' 4  
             d'' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" cis'' 4  
             \color "blue" b' 4  
             \color "blue" cis'' 2  \fermata  
             \bar "|"  %{ end measure 10 %} 
             b' 4  
             b' 4  
             \set stemRightBeamCount = #1
             cis'' 8 [  
             \set stemLeftBeamCount = #1
             dis'' 8 ]  
             e'' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" e'' 4  
             \color "blue" dis'' 4  
             \color "blue" e'' 2  \fermata  
             \bar "|"  %{ end measure 12 %} 
             e'' 4  
             cis'' 4  
             fis'' 4.  
             e'' 8  
             \bar "|"  %{ end measure 13 %} 
             d'' 4  
             \set stemRightBeamCount = #1
             \color "blue" cis'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" b' 8 ]  
             \color "blue" b' 2  \fermata  
             \bar "|"  %{ end measure 14 %} 
             cis'' 4  
             e'' 4  
             d'' 4  
             \set stemRightBeamCount = #1
             cis'' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             \bar "|"  %{ end measure 15 %} 
             b' 2  
             a' 2  \fermata  
             \bar "||"  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_6" 
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
              "rule_1" 
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
