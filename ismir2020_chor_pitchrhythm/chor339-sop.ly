\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor339-sop"   
  
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
             a' 4  
             b' 4  
             c'' 4  
             b' 4  
             \bar "|"  %{ end measure 1 %} 
             a' 4  
             b' 4  
             \color "red" gis' 4.  
             \color "red" fis' 8  
             \bar "|"  %{ end measure 2 %} 
             \color "red" e' 4  \fermata  
             g' 4  
             g' 4  
             f' 4  
             \bar "|"  %{ end measure 3 %} 
             e' 4  
             a' 4  
             \color "blue" a' 4  
             \color "blue" gis' 4  
             \bar "|"  %{ end measure 4 %} 
             \color "blue" a' 2.  \fermata  
             \bar "|."  %{ end measure 5 %} 
             b' 4  
             \bar "|"  %{ end measure 0 %} 
             \color "red" c'' 4  
             \color "red" d'' 4  
             \color "red" e'' 4  
             e'' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" d'' 4  
             \color "blue" d'' 4  
             \color "blue" c'' 4  \fermata  
             e'' 4  
             \bar "|"  %{ end measure 7 %} 
             d'' 4  
             c'' 4  
             b' 4  
             \set stemRightBeamCount = #1
             a' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             \bar "|"  %{ end measure 8 %} 
             c'' 4  
             b' 4  
             a' 4  \fermata  
             \bar "||"  %{ end measure 9 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_1" 
               _  
               _  
               _  
              "rule_3" 
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
