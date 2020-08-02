\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor120-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key d \major 
             \key b \minor 
             \time 4/4
             \set stemRightBeamCount = #1
             fis' 8 [  
             \set stemLeftBeamCount = #1
             g' 8 ]  
             \bar "|"  %{ end measure 0 %} 
             a' 4  
             b' 4  
             a' 4  
             d'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" d'' 4  
             \color "blue" cis'' 4  
             \color "blue" d'' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 2 %} 
             cis'' 4  
             b' 4  
             e'' 4  
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" cis'' 8 ]  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" cis'' 2  
             \color "blue" b' 4  \fermata  
             \bar "|."  %{ end measure 4 %} 
             b' 4  
             \bar "|"  %{ end measure 0 %} 
             b' 4  
             \set stemRightBeamCount = #1
             b' 8 [  
             \set stemRightBeamCount = #1
             cis'' 16 [  
             \set stemLeftBeamCount = #2
             d'' 16 ]  
             \set stemRightBeamCount = #1
             cis'' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             a' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" a' 4  
             \color "blue" gis' 4  
             \color "blue" a' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 6 %} 
             b' 4  
             cis'' 4  
             d'' 4  
             \color "blue" cis'' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" b' 2  
             \color "blue" cis'' 4  \fermata  
             \set stemRightBeamCount = #1
             fis' 8 [  
             \set stemLeftBeamCount = #1
             g' 8 ]  
             \bar "|"  %{ end measure 8 %} 
             a' 4  
             b' 4  
             a' 4  
             d'' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" d'' 4  
             \color "blue" cis'' 4  
             \color "blue" d'' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 10 %} 
             cis'' 4  
             b' 4  
             e'' 4  
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             cis'' 8 ]  
             \bar "|"  %{ end measure 11 %} 
             cis'' 2  
             b' 4  \fermata  
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
              "rule_3" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_4" 
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
