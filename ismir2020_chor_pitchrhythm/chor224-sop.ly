\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor224-sop"   
  
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
             a' 4  
             c'' 4  
             c'' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "red" f' 4  
             \color "red" g' 4  
             \color "red" a' 4  \fermata  
             f' 4  
             \bar "|"  %{ end measure 2 %} 
             c'' 4  
             c'' 4  
             d'' 4  
             e'' 4  
             \bar "|"  %{ end measure 3 %} 
             \set stemRightBeamCount = #1
             f'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" e'' 8 ]  
             \color "blue" d'' 4  
             \color "blue" c'' 4  \fermata  
             c'' 4  
             \bar "|"  %{ end measure 4 %} 
             a' 4  
             c'' 4  
             d'' 4  
             c'' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" bes' 4  
             \color "blue" a' 4  
             \color "blue" g' 4  \fermata  
             c'' 4  
             \bar "|"  %{ end measure 6 %} 
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             bes' 8 ]  
             c'' 4  
             bes' 4  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             g' 8 ]  
             \bar "|"  %{ end measure 7 %} 
             f' 4  
             g' 4  
             f' 4  \fermata  
             \bar "||"  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_0" 
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
