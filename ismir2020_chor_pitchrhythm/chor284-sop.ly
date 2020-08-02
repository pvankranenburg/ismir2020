\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor284-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key f \major 
             \time 4/4
             f'' 4  
             \bar "|"  %{ end measure 0 %} 
             f'' 4  
             f'' 4  
             e'' 4  
             c'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" d'' 4  
             \color "blue" e'' 4  
             \color "blue" f'' 4  \fermata  
             f'' 4  
             \bar "|"  %{ end measure 2 %} 
             e'' 4  
             d'' 4  
             c'' 4  
             bes' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 4  
             \color "blue" g' 4  
             \color "blue" a' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 4 %} 
             g' 4  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             c'' 4  
             d'' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" c'' 4  
             \color "blue" b' 4  
             \color "blue" c'' 4  \fermata  
             c'' 4  
             \bar "|"  %{ end measure 6 %} 
             d'' 4  
             e'' 4  
             f'' 4  
             e'' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" d'' 4  
             \color "blue" d'' 4  
             \color "blue" c'' 4  \fermata  
             c'' 4  
             \bar "|"  %{ end measure 8 %} 
             bes' 4  
             a' 4  
             d'' 4  
             c'' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" bes' 4  
             \color "blue" a' 4  
             \color "blue" g' 4  \fermata  
             g' 4  
             \bar "|"  %{ end measure 10 %} 
             a' 4  
             b' 4  
             c'' 4  
             d'' 4  
             \bar "|"  %{ end measure 11 %} 
             c'' 4  
             b' 4  
             c'' 4  \fermata  
             \bar "||"  %{ end measure 12 %} 
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
