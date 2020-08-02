\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor210-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key c \major 
             \time 4/4
             d' 4  
             \bar "|"  %{ end measure 0 %} 
             d' 4  
             \color "blue" e' 4  
             \color "blue" f' 2  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" e' 2  \fermata  
             a' 4  
             b' 4  
             \bar "|"  %{ end measure 2 %} 
             c'' 4  
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" c'' 8 ]  
             \color "blue" b' 2  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 2  \fermata  
             r 4  
             c'' 4  
             \bar "|"  %{ end measure 4 %} 
             \color "red" b' 4  
             \color "red" a' 4  
             \color "red" g' 4  
             g' 4  
             \bar "|"  %{ end measure 5 %} 
             a' 4  
             g' 4  
             f' 4  
             \color "blue" f' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" e' 2  
             \color "blue" f' 4  \fermata  
             e' 4  
             \bar "|"  %{ end measure 7 %} 
             e' 4  
             \color "blue" f' 4  
             \color "blue" g' 2  
             \bar "|"  %{ end measure 8 %} 
             \color "blue" e' 2  \fermata  
             a' 4  
             b' 4  
             \bar "|"  %{ end measure 9 %} 
             c'' 4  
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" c'' 8 ]  
             \color "blue" b' 2  
             \bar "|"  %{ end measure 10 %} 
             \color "blue" a' 2  \fermata  
             r 4  
             fis' 4  
             \bar "|"  %{ end measure 11 %} 
             g' 4  
             g' 4  
             \color "blue" g' 4  
             \color "blue" fis' 4  
             \bar "|"  %{ end measure 12 %} 
             \color "blue" g' 2  \fermata  
             r 4  
             e' 4  
             \bar "|"  %{ end measure 13 %} 
             f' 4  
             g' 4  
             e' 2  
             \bar "|"  %{ end measure 14 %} 
             d' 2.  \fermata  
             \bar "||"  %{ end measure 15 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
              "rule_6" 
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
              "rule_3" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_11" 
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
              "rule_9" 
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
