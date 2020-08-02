\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor283-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \clef "treble" 
             \key g \major 
             \key e \minor 
             \time 4/4
             b' 4  
             b' 4  
             a' 4  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" fis' 2  
             \color "blue" e' 2  \fermata  
             \bar "|"  %{ end measure 2 %} 
             b' 4  
             cis'' 4  
             d'' 4  
             \color "blue" b' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" e'' 2  
             \color "blue" dis'' 2  \fermata  
             \bar "|"  %{ end measure 4 %} 
             \set stemRightBeamCount = #1
             e'' 8 [  
             \set stemLeftBeamCount = #1
             fis'' 8 ]  
             g'' 4  
             \color "blue" fis'' 4.  
             \color "blue" fis'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" e'' 1  \fermata  
             \bar "|."  %{ end measure 6 %} 
             b' 4  
             b' 4  
             c'' 4  
             b' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" a' 4  
             \color "blue" a' 4  
             \color "blue" g' 2  \fermata  
             \bar "|"  %{ end measure 8 %} 
             b' 4  
             cis'' 4  
             d'' 4  
             b' 4  
             \bar "|"  %{ end measure 9 %} 
             e'' 4  
             \color "blue" d'' 4  
             \color "blue" cis'' 2  
             \bar "|"  %{ end measure 10 %} 
             \color "blue" b' 2  \fermata  
             b' 4  
             b' 4  
             \bar "|"  %{ end measure 11 %} 
             a' 4  
             g' 4  
             fis' 2  
             \bar "|"  %{ end measure 12 %} 
             e' 1  \fermata  
             \bar "||"  %{ end measure 13 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
              "rule_2" 
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
              "rule_1" 
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
              "rule_6" 
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
