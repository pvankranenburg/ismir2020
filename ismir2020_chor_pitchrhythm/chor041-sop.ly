\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor041-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key c \major 
             \key a \minor 
             \time 4/4
             e' 4  
             \bar "|"  %{ end measure 0 %} 
             g' 4  
             a' 4  
             g' 4  
             c'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" c'' 4  
             \color "blue" b' 4  
             \color "blue" c'' 4  \fermata  
             c'' 4  
             \bar "|"  %{ end measure 2 %} 
             b' 4  
             a' 4  
             d'' 4.  
             c'' 8  
             \bar "|"  %{ end measure 3 %} 
             b' 4  
             \color "blue" c'' 4  
             \color "blue" b' 2  
             \bar "|"  %{ end measure 4 %} 
             \color "blue" a' 2.  \fermata  
             \bar "|."  %{ end measure 5 %} 
             a' 4  
             \bar "|"  %{ end measure 0 %} 
             a' 4  
             a' 4  
             b' 4.  
             a' 8  
             \bar "|"  %{ end measure 6 %} 
             b' 4  
             g' 4  
             \color "red" g' 4  
             \color "red" fis' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "red" g' 4  \fermata  
             g' 4  
             a' 4  
             b' 4  
             \bar "|"  %{ end measure 8 %} 
             c'' 4  
             \color "red" b' 4  
             \color "red" a' 2  
             \bar "|"  %{ end measure 9 %} 
             \color "red" b' 4  \fermata  
             \set stemRightBeamCount = #1
             e' 8 [  
             \set stemLeftBeamCount = #1
             fis' 8 ]  
             g' 4  
             a' 4  
             \bar "|"  %{ end measure 10 %} 
             g' 4  
             c'' 4  
             \color "red" c'' 4  
             \color "red" b' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "red" c'' 4  \fermata  
             c'' 4  
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 12 %} 
             d'' 4.  
             c'' 8  
             b' 4  
             c'' 4  
             \bar "|"  %{ end measure 13 %} 
             b' 2  
             a' 4  \fermata  
             \bar "||"  %{ end measure 14 %} 
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
              "Miss" 
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
