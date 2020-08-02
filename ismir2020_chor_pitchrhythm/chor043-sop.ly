\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor043-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw \with  { 
% removed \autoBeamOff
          } 
          { \clef "treble" 
             \key e \major 
             \key e \major 
             \time 4/4
             r 4  
             \set stemRightBeamCount = #1
             b' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             e'' 4  
             b' 4  
             \bar "|"  %{ end measure 1 %} 
             cis'' 4  
             b' 4  
             a' 4.  
             \set stemRightBeamCount = #2
             b' 16 [  
             \set stemLeftBeamCount = #2
             \color "blue" a' 16 ]  
             \bar "|"  %{ end measure 2 %} 
             \color "blue" gis' 4  
             \color "blue" fis' 4  \fermata  
             r 4  
             \set stemRightBeamCount = #1
             \color "red" b' 8 [  
             \set stemLeftBeamCount = #1
             \color "red" a' 8 ]  
             \bar "|"  %{ end measure 3 %} 
             \color "red" gis' 4  
             \set stemRightBeamCount = #1
             cis'' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             \set stemRightBeamCount = #1
             ais' 8 [  
             \set stemLeftBeamCount = #1
             fis' 8 ]  
             \color "blue" b' 4  ~  
             \bar "|"  %{ end measure 4 %} 
             \color "blue" b' 4  
             \color "blue" ais' 4  
             \color "blue" b' 2  \fermata  
             \bar "|."  %{ end measure 5 %} 
             r 4  
             \set stemRightBeamCount = #1
             fis' 8 [  
             \set stemLeftBeamCount = #1
             gis' 8 ]  
             a' 4  
             gis' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" cis'' 4.  
             \color "blue" dis'' 8  
             \color "blue" bis' 2  \fermata  
             \bar "|"  %{ end measure 7 %} 
             r 4  
             \set stemRightBeamCount = #1
             cis'' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             ais' 4  
             b' 4  
             \bar "|"  %{ end measure 8 %} 
             \color "red" b' 4  
             \color "red" ais' 4  
             \color "red" b' 4  \fermata  
             \set stemRightBeamCount = #1
             fis' 8 [  
             \set stemLeftBeamCount = #1
             fis' 8 ]  
             \bar "|"  %{ end measure 9 %} 
             b' 4.  
             a' 8  
             gis' 4  
             cis'' 4  
             \bar "|"  %{ end measure 10 %} 
             bis' 4  
             \color "red" cis'' 2  
             \color "red" bis' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "red" cis'' 2  
             r 4  
             \set stemRightBeamCount = #1
             e'' 8 [  
             \set stemLeftBeamCount = #1
             b' 8 ]  
             \bar "|"  %{ end measure 12 %} 
             cis'' 4  
             \set stemRightBeamCount = #1
             gis' 8 [  
             \set stemLeftBeamCount = #1
             a' 8 ]  
             b' 4.  
             a' 8  
             \bar "|"  %{ end measure 13 %} 
             gis' 4  
             \set stemRightBeamCount = #1
             fis' 8 [  
             \set stemLeftBeamCount = #1
             e' 8 ]  
             dis' 4  
             e' 4  ~  
             \bar "|"  %{ end measure 14 %} 
             e' 4  
             dis' 4  
             e' 2  \fermata  
             \bar "||"  %{ end measure 15 %} 
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
              "rule_6" 
               _  
               _  
              "rule_8" 
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
              "rule_1" 
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
              "rule_9" 
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
