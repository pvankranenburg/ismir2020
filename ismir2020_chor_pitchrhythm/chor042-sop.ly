\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor042-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key a \major 
             \key a \major 
             \time 4/4
             cis'' 4  
             \bar "|"  %{ end measure 0 %} 
             \color "red" a' 4  
             \color "red" b' 4  
             \color "red" cis'' 4  
             e'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" d'' 4  
             \color "blue" d'' 4  
             \color "blue" cis'' 4  \fermata  
             e'' 4  
             \bar "|"  %{ end measure 2 %} 
             d'' 4  
             cis'' 4  
             \color "blue" b' 4  
             \color "blue" b' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" cis'' 2.  \fermata  
             \bar "|."  %{ end measure 4 %} 
             b' 4  
             \bar "|"  %{ end measure 0 %} 
             b' 4  
             b' 4  
             cis'' 4  
             b' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" a' 4  
             \color "blue" b' 4  
             \color "blue" gis' 4  \fermata  
             gis' 4  
             \bar "|"  %{ end measure 6 %} 
             a' 4  
             b' 4  
             cis'' 4  
             \set stemRightBeamCount = #1
             b' 8 [  
             \set stemLeftBeamCount = #1
             cis'' 8 ]  
             \bar "|"  %{ end measure 7 %} 
             d'' 4  
             cis'' 4  
             b' 2  
             \bar "|"  %{ end measure 8 %} 
             a' 2.  \fermata  
             \bar "||"  %{ end measure 9 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
              "rule_2" 
               _  
               _  
               _  
              "rule_2" 
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
