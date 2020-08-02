\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor059-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \partial 32*8 
             \clef "treble" 
             \key bes \major 
             \key g \minor 
             \time 4/4
             g' 4  
             \bar "|"  %{ end measure 0 %} 
             g' 4  
             g' 4  
             fis' 4  
             d' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "red" g' 4  
             \color "red" a' 4  
             \color "red" bes' 4  
             bes' 4  
             \bar "|"  %{ end measure 2 %} 
             \color "blue" c'' 4  
             \color "blue" bes' 4  
             \color "blue" a' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 3 %} 
             bes' 4  
             c'' 4  
             \set stemRightBeamCount = #1
             d'' 8 [  
             \set stemLeftBeamCount = #1
             c'' 8 ]  
             bes' 4  
             \bar "|"  %{ end measure 4 %} 
             ees'' 4  
             ees'' 4  
             d'' 4  
             \set stemRightBeamCount = #1
             des'' 8 [  
             \set stemLeftBeamCount = #1
             \color "blue" c'' 8 ]  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" c'' 2  
             \color "blue" bes' 4  \fermata  
             bes' 4  
             \bar "|"  %{ end measure 6 %} 
             a' 4  
             g' 4  
             f' 4  
             \set stemRightBeamCount = #1
             d' 8 [  
             \set stemLeftBeamCount = #1
             ees' 8 ]  
             \bar "|"  %{ end measure 7 %} 
             f' 4  
             f' 4  
             g' 4  
             \color "blue" f' 4  
             \bar "|"  %{ end measure 8 %} 
             \color "blue" ees' 2  
             \color "blue" d' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 9 %} 
             c'' 4  
             \set stemRightBeamCount = #1
             bes' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             a' 2  
             \bar "|"  %{ end measure 10 %} 
             g' 2.  \fermata  
             \bar "||"  %{ end measure 11 %} 
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
