\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor343-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \clef "treble" 
             \key d \major 
             \key d \major 
             \time 3/4
             d' 4  
             d' 4  
             e' 4  
             \bar "|"  %{ end measure 1 %} 
             fis' 4.  
             gis' 8  
             a' 4  
             \bar "|"  %{ end measure 2 %} 
             \color "red" a' 2  
             \color "red" gis' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "red" a' 2  \fermata  
             fis' 4  
             \bar "|"  %{ end measure 4 %} 
             g' 2  
             fis' 4  
             \bar "|"  %{ end measure 5 %} 
             e' 2  
             \color "blue" d' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" e' 2.  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" d' 2.  \fermata  
             \bar "|."  %{ end measure 8 %} 
             e' 4  
             e' 4  
             fis' 4  
             \bar "|"  %{ end measure 9 %} 
             g' 2  
             g' 4  
             \bar "|"  %{ end measure 10 %} 
             fis' 4.  
             \color "blue" e' 8  
             \color "blue" fis' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" e' 2.  \fermata  
             \bar "|"  %{ end measure 12 %} 
             fis' 4  
             fis' 4  
             fis' 4  
             \bar "|"  %{ end measure 13 %} 
             g' 4.  
             a' 8  
             b' 4  
             \bar "|"  %{ end measure 14 %} 
             \color "red" b' 2  
             \color "red" ais' 4  
             \bar "|"  %{ end measure 15 %} 
             \color "red" b' 2  \fermata  
             cis'' 4  
             \bar "|"  %{ end measure 16 %} 
             d'' 4  
             fis' 2  
             \bar "|"  %{ end measure 17 %} 
             g' 2  
             \color "red" fis' 4  
             \bar "|"  %{ end measure 18 %} 
             \color "red" e' 4  
             \color "red" e' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 19 %} 
             b' 4.  
             a' 8  
             g' 4  
             \bar "|"  %{ end measure 20 %} 
             \set stemRightBeamCount = #1
             fis' 8 [  
             \set stemLeftBeamCount = #1
             e' 8 ]  
             e' 4.  
             d' 8  
             \bar "|"  %{ end measure 21 %} 
             d' 2.  \fermata  
             \bar "||"  %{ end measure 22 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_5" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_5" 
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
