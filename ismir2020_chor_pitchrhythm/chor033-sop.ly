\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor033-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \clef "treble" 
             \key c \major 
             \key a \minor 
             \time 4/4
             a' 4  
             \set stemRightBeamCount = #1
             e' 8 [  
             \set stemLeftBeamCount = #1
             fis' 8 ]  
             gis' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             \set stemRightBeamCount = #1
             b' 8 [  
             \set stemRightBeamCount = #1
             c'' 16 [  
             \set stemLeftBeamCount = #2
             d'' 16 ]  
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" b' 8 ]  
             \color "blue" b' 4  
             \color "blue" a' 4  \fermata  
             \bar "|"  %{ end measure 2 %} 
             c'' 4  
             b' 4  
             a' 4  
             b' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" c'' 4  
             \color "blue" d'' 4  
             \color "blue" e'' 2  \fermata  
             \bar "|."  %{ end measure 4 %} 
             e'' 4  
             f'' 4  
             g'' 4  
             c'' 4  
             \bar "|"  %{ end measure 5 %} 
             f'' 4  
             \color "red" e'' 4  
             \color "red" d'' 4  
             \color "red" c'' 4  \fermata  
             \bar "|"  %{ end measure 6 %} 
             d'' 4  
             d'' 4  
             e'' 4  
             a' 4  
             \bar "|"  %{ end measure 7 %} 
             d'' 4  
             \set stemRightBeamCount = #1
             c'' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             b' 2  
             \bar "|"  %{ end measure 8 %} 
             a' 2.  \fermata  
             r 4  
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
