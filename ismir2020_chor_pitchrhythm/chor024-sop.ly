\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor024-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key d \major 
             \key d \major 
             \time 4/4
             d' 4  
             \bar "|"  %{ end measure 0 %} 
             a' 4  
             a' 4  
             b' 4  
             \color "blue" cis'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" d'' 2  
             \color "blue" d'' 4  \fermata  
             fis'' 4  
             \bar "|"  %{ end measure 2 %} 
             e'' 4  
             d'' 4  
             \color "blue" d'' 4  
             \color "blue" cis'' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" d'' 2.  \fermata  
             \bar "|."  %{ end measure 4 %} 
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             e'' 8 ]  
             \bar "|"  %{ end measure 0 %} 
             fis'' 4  
             fis'' 4  
             e'' 4.  
             d'' 8  
             \bar "|"  %{ end measure 5 %} 
             \set stemRightBeamCount = #1
             cis'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" b' 8 ]  
             \color "blue" cis'' 4  
             \color "blue" a' 4  \fermata  
             cis'' 4  
             \bar "|"  %{ end measure 6 %} 
             d'' 4  
             cis'' 4  
             \color "blue" b' 4  
             \color "blue" b' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" a' 2.  \fermata  
             a' 4  
             \bar "|"  %{ end measure 8 %} 
             \set stemRightBeamCount = #1
             fis' 8 [  
             \set stemLeftBeamCount = #1
             g' 8 ]  
             a' 4  
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 9 %} 
             a' 4  
             \set stemRightBeamCount = #1
             \color "blue" g' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" fis' 8 ]  
             \color "blue" fis' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 10 %} 
             g' 4  
             fis' 4  
             e' 4  
             e' 4  
             \bar "|"  %{ end measure 11 %} 
             d' 2.  \fermata  
             \bar "||"  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
               _  
              "rule_0" 
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
              "rule_2" 
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
