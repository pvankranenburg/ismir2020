\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor278-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \clef "treble" 
             \key e \major 
             \key e \major 
             \time 4/4
             e' 4  
             \bar "|"  %{ end measure 0 %} 
             \color "red" b' 4  
             \color "red" gis' 4  
             \color "red" e' 4  
             b' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" cis'' 4  
             \color "blue" cis'' 4  
             \color "blue" b' 4  \fermata  
             b' 4  
             \bar "|"  %{ end measure 2 %} 
             cis'' 4  
             dis'' 4  
             e'' 4  
             dis'' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "red" cis'' 4  
             \color "red" cis'' 4  
             \color "red" b' 4  \fermata  
             gis' 4  
             \bar "|"  %{ end measure 4 %} 
             cis'' 4  
             b' 4  
             a' 4  
             \color "blue" gis' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" fis' 2  
             \color "blue" e' 2  \fermata  
             \bar "|."  %{ end measure 6 %} 
             \color "blue" b' 2  
             \color "blue" gis' 2  \fermata  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" b' 2  
             \color "blue" gis' 2  \fermata  
             \bar "|"  %{ end measure 8 %} 
             a' 4  
             gis' 4  
             fis' 4  
             gis' 4  
             \bar "|"  %{ end measure 9 %} 
             a' 4  
             gis' 4  
             fis' 4  
             gis' 4  
             \bar "|"  %{ end measure 10 %} 
             a' 4  
             \color "blue" gis' 4  
             \color "blue" fis' 2  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" e' 2  \fermata  
             e'' 4  
             dis'' 4  
             \bar "|"  %{ end measure 12 %} 
             cis'' 4  
             b' 4  
             a' 4  
             gis' 4  
             \bar "|"  %{ end measure 13 %} 
             fis' 2  
             e' 4  \fermata  
             \bar "||"  %{ end measure 14 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
              "rule_8" 
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
              "Miss" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_6" 
               _  
              "rule_6" 
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
