\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1538"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \time 2/4
             \key a \major 
             \key a \major 
             e'' 8  
             a'' 8  
             a'' 8  
             a'' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" a'' 8  
             \color "red" fis'' 8  
             \color "red" e'' 8  \fermata  
             e'' 8  
             \bar "|"  %{ end measure 2 %} 
             fis'' 8  
             e'' 8  
             d'' 8  
             cis'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "red" b' 8  
             \color "red" b' 8  
             \color "red" b' 4  \fermata  
             \bar "|"  %{ end measure 4 %} 
             a' 8  
             cis'' 8  
             e'' 8  
             e'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" fis'' 8  
             \color "blue" fis'' 8  
             \color "blue" fis'' 4  \fermata  
             \bar "|"  %{ end measure 6 %} 
             a' 8  
             cis'' 8  
             e'' 8  
             e'' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" fis'' 8  
             \color "blue" fis'' 8  
             \color "blue" fis'' 4  \fermata  
             \bar "|"  %{ end measure 8 %} 
             d'' 8  
             d'' 8  
             cis'' 8  
             cis'' 8  
             \bar "|"  %{ end measure 9 %} 
             b' 4  
             a' 4  \fermata  
             \bar "||"  %{ end measure 10 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "Miss" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_24" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_27" 
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
