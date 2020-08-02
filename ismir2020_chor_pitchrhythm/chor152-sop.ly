\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor152-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \clef "treble" 
             \key d \major 
             \key d \major 
             \time 4/4
             a' 4  
             a' 4  
             b' 4  
             b' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" cis'' 4  
             \color "blue" cis'' 4  
             \color "blue" d'' 2  \fermata  
             \bar "|"  %{ end measure 2 %} 
             e'' 4  
             e'' 4  
             d'' 4  
             d'' 4  
             \bar "|"  %{ end measure 3 %} 
             cis'' 4  
             \set stemRightBeamCount = #1
             b' 8 [  
             \set stemRightBeamCount = #1
             cis'' 16 [  
             \set stemLeftBeamCount = #2
             \color "blue" d'' 16 ]  
             \color "blue" b' 2  
             \bar "|"  %{ end measure 4 %} 
             \color "blue" a' 2  \fermata  
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 5 %} 
             b' 4  
             b' 4  
             \color "blue" a' 4  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" fis' 2  \fermata  
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 7 %} 
             g' 4  
             g' 4  
             fis' 4  
             \set stemRightBeamCount = #1
             e' 8 [  
             \set stemRightBeamCount = #1
             fis' 16 [  
             \set stemLeftBeamCount = #2
             \color "blue" g' 16 ]  
             \bar "|"  %{ end measure 8 %} 
             \color "blue" e' 2  
             \color "blue" d' 2  \fermata  
             \bar "|"  %{ end measure 9 %} 
             d'' 4  
             d'' 4  
             cis'' 4  
             cis'' 4  
             \bar "|"  %{ end measure 10 %} 
             \color "blue" b' 4  
             \color "blue" b' 4  
             \color "blue" a' 2  \fermata  
             \bar "|"  %{ end measure 11 %} 
             a' 4  
             a' 4  
             g' 4  
             fis' 4  
             \bar "|"  %{ end measure 12 %} 
             e' 4  
             e' 4  
             d' 2  \fermata  
             \bar "||"  %{ end measure 13 %} 
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
              "rule_4" 
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
