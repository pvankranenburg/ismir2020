\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor147-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key ees \major 
             \key ees \major 
             \time 4/4
             ees' 4  
             \bar "|"  %{ end measure 0 %} 
             bes' 4  
             bes' 4  
             \color "blue" c'' 4  
             \color "blue" d'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" ees'' 2  \fermata  
             r 4  
             d'' 4  
             \bar "|"  %{ end measure 2 %} 
             ees'' 4  
             d'' 4  
             \color "blue" c'' 4  
             \color "blue" c'' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" bes' 2  \fermata  
             r 4  
             bes' 4  
             \bar "|"  %{ end measure 4 %} 
             c'' 4  
             bes' 4  
             \color "blue" aes' 4  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" f' 2  \fermata  
             r 4  
             g' 4  
             \bar "|"  %{ end measure 6 %} 
             ees' 4  
             f' 4  
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             aes' 8 ]  
             \color "blue" bes' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" aes' 2  
             \color "blue" g' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 8 %} 
             ees'' 4  
             d'' 4  
             \color "blue" c'' 4  
             \color "blue" c'' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" bes' 2  \fermata  
             r 4  
             ees'' 4  
             \bar "|"  %{ end measure 10 %} 
             d'' 4  
             c'' 4  
             bes' 4  
             c'' 4  
             \bar "|"  %{ end measure 11 %} 
             bes' 4  
             aes' 4  
             \set stemRightBeamCount = #1
             g' 8 [  
             \set stemLeftBeamCount = #1
             aes' 8 ]  
             bes' 4  
             \bar "|"  %{ end measure 12 %} 
             aes' 4  
             g' 4  
             f' 2  
             \bar "|"  %{ end measure 13 %} 
             ees' 2.  \fermata  
             \bar "||"  %{ end measure 14 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
              "rule_1" 
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
              "rule_1" 
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
