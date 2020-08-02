\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor323-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key f \major 
             \key f \major 
             \time 4/4
             f' 4  
             \bar "|"  %{ end measure 0 %} 
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             bes' 8 ]  
             \set stemRightBeamCount = #1
             \color "red" a' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" g' 8 ]  
             \color "red" f' 4  
             c'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" d'' 4  
             \color "blue" d'' 4  
             \color "blue" c'' 4  \fermata  
             c'' 4  
             \bar "|"  %{ end measure 2 %} 
             d'' 4  
             e'' 4  
             f'' 4  
             e'' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "red" d'' 4  
             \color "red" d'' 4  
             \color "red" c'' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 4 %} 
             d'' 4  
             c'' 4  
             bes' 4  
             \color "blue" a' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" g' 2  
             \color "blue" f' 4  \fermata  
             \bar "|."  %{ end measure 6 %} 
             r 4  
             \bar "|"  %{ end measure 0 %} 
             \color "blue" c'' 2  
             \color "blue" a' 2  \fermata  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" c'' 2  
             \color "blue" a' 2  \fermata  
             \bar "|"  %{ end measure 8 %} 
             \color "red" a' 4  
             \color "red" a' 4  
             \color "red" g' 4  
             g' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "red" a' 4  
             \color "red" a' 4  
             \color "red" g' 4  
             g' 4  
             \bar "|"  %{ end measure 10 %} 
             a' 4  
             \color "blue" a' 4  
             \color "blue" g' 2  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" f' 2  \fermata  
             f'' 4  
             e'' 4  
             \bar "|"  %{ end measure 12 %} 
             d'' 4  
             c'' 4  
             bes' 4  
             a' 4  
             \bar "|"  %{ end measure 13 %} 
             g' 2  
             f' 4  \fermata  
             \bar "||"  %{ end measure 14 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
              "rule_2" 
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
               _  
               _  
               _  
               _  
               _  
              "rule_6" 
               _  
              "rule_6" 
               _  
              "rule_6" 
               _  
               _  
              "rule_3" 
               _  
               _  
               _  
              "rule_3" 
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