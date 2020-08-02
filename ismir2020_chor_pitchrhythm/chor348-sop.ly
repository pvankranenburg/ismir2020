\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor348-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \clef "treble" 
             \key c \major 
             \key c \major 
             \time 4/4
             g' 4  
             g' 4  
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" b' 4  
             \color "blue" b' 4  
             \color "blue" c'' 2  \fermata  
             \bar "|"  %{ end measure 2 %} 
             d'' 4  
             d'' 4  
             c'' 4  
             c'' 4  
             \bar "|"  %{ end measure 3 %} 
             b' 4  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemRightBeamCount = #1
             b' 16 [  
             \set stemLeftBeamCount = #2
             \color "blue" c'' 16 ]  
             \color "blue" a' 2  
             \bar "|"  %{ end measure 4 %} 
             \color "blue" g' 2  \fermata  
             g' 4  
             g' 4  
             \bar "|"  %{ end measure 5 %} 
             a' 4  
             a' 4  
             \color "blue" g' 4  
             \color "blue" f' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" e' 2  \fermata  
             g' 4  
             g' 4  
             \bar "|"  %{ end measure 7 %} 
             f' 4  
             f' 4  
             e' 4  
             \set stemRightBeamCount = #1
             d' 8 [  
             \set stemRightBeamCount = #1
             e' 16 [  
             \set stemLeftBeamCount = #2
             \color "blue" f' 16 ]  
             \bar "|"  %{ end measure 8 %} 
             \color "blue" d' 2  
             \color "blue" c' 2  \fermata  
             \bar "|"  %{ end measure 9 %} 
             c'' 4  
             c'' 4  
             b' 4  
             b' 4  
             \bar "|"  %{ end measure 10 %} 
             \color "blue" a' 4  
             \color "blue" a' 4  
             \color "blue" g' 2  \fermata  
             \bar "|"  %{ end measure 11 %} 
             g' 4  
             g' 4  
             f' 4  
             e' 4  
             \bar "|"  %{ end measure 12 %} 
             d' 4  
             d' 4  
             c' 2  \fermata  
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
