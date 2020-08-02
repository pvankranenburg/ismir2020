\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1125"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 2/4
             \key a \major 
             \key a \major 
             e' 8  
             \bar "|"  %{ end measure 0 %} 
             e' 8  
             a' 8  
             a' 8  
             a' 8  
             \bar "|"  %{ end measure 1 %} 
             cis'' 16  
             b' 16  
             \color "blue" a' 16  
             \color "blue" gis' 16  
             \color "blue" a' 8  \fermata  
             e' 8  
             \bar "|"  %{ end measure 2 %} 
             e' 8  
             a' 8  
             a' 8  
             a' 8  
             \bar "|"  %{ end measure 3 %} 
             cis'' 16  
             b' 16  
             \color "blue" a' 16  
             \color "blue" gis' 16  
             \color "blue" a' 8  \fermata  
             a' 8  
             \bar "|"  %{ end measure 4 %} 
             a' 8  
             a'' 8  
             gis'' 8  
             \color "red" fis'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" fis'' 4  
             \color "red" e'' 8  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 6 %} 
             cis'' 4  
             e'' 16  
             d'' 16  
             cis'' 16  
             b' 16  
             \bar "|"  %{ end measure 7 %} 
             b' 4  
             a' 8  \fermata  
             \bar "||"  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_14" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_13" 
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

#(set-global-staff-size 14)
\layout { indent = 0\cm}

#(set-global-staff-size 14)
\layout { indent = 0\cm}
