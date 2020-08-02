\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1479"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 6/8
             \key a \major 
             \key a \major 
             e' 8  
             \bar "|"  %{ end measure 0 %} 
             a' 4  
             a' 8  
             cis'' 8  
             b' 8  
             a' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" b' 4  
             \color "blue" gis' 8  
             \color "blue" a' 4  \fermata  
             e'' 8  
             \bar "|"  %{ end measure 2 %} 
             cis'' 4  
             e'' 8  
             b' 4  
             e'' 8  
             \bar "|"  %{ end measure 3 %} 
             a' 8  
             \color "blue" a' 8  
             \color "blue" gis' 8  
             \color "blue" a' 4  \fermata  
             cis'' 8  
             \bar "|"  %{ end measure 4 %} 
             \color "red" b' 4  
             \color "red" b' 8  
             \color "red" gis' 4  
             b' 8  
             \bar "|"  %{ end measure 5 %} 
             a' 8  
             \color "blue" gis' 8  
             \color "blue" fis' 8  
             \color "blue" e' 4  \fermata  
             e' 8  
             \bar "|"  %{ end measure 6 %} 
             a' 4  
             a' 8  
             b' 4  
             b' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "red" cis'' 4.  
             \color "red" e'' 8  
             \color "red" d'' 8  \fermata  
             b' 8  
             \bar "|"  %{ end measure 8 %} 
             a' 4  
             a' 8  
             cis'' 8  
             cis'' 8  
             b' 8  
             \bar "|"  %{ end measure 9 %} 
             a' 4  
             r 4.  \fermata  
             \bar "||"  %{ end measure 10 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
               _  
               _  
              "rule_25" 
               _  
               _  
               _  
              "rule_13" 
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
