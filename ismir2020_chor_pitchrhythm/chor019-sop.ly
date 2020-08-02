\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor019-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \clef "treble" 
             \key f \major 
             \time 4/4
             g' 4  
             \bar "|"  %{ end measure 0 %} 
             g' 4  
             g' 4  
             fis' 4  
             bes' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" a' 4  
             \color "blue" g' 4  
             \color "blue" fis' 4  \fermata  
             fis' 4  
             \bar "|"  %{ end measure 2 %} 
             fis' 4  
             fis' 4  
             g' 4  
             e' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" fis' 4  
             \color "blue" fis' 4  
             \color "blue" g' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 4 %} 
             a' 4  
             c'' 4  
             a' 4  
             f' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" g' 4  
             \color "blue" a' 4  
             \color "blue" bes' 4  \fermata  
             bes' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" a' 4  
             \color "blue" g' 4  
             \color "blue" fis' 4  \fermata  
             fis' 4  
             \bar "|"  %{ end measure 7 %} 
             fis' 4  
             fis' 4  
             g' 4  
             e' 4  
             \bar "|"  %{ end measure 8 %} 
             fis' 4  
             fis' 4  
             g' 4  \fermata  
             \bar "||"  %{ end measure 9 %} 
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
