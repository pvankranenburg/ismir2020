\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1217"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 6/8
             \key g \major 
             \key g \major 
             d' 8  
             \bar "|"  %{ end measure 0 %} 
             b' 8.  
             a' 16  
             g' 8  
             g' 8  
             \color "blue" fis' 8  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" a' 2  
             r 8  \fermata  
             d' 8  
             \bar "|"  %{ end measure 2 %} 
             c'' 8.  
             b' 16  
             a' 8  
             a' 8  
             \color "blue" d'' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" b' 2  
             r 8  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 4 %} 
             d'' 8.  
             c'' 16  
             b' 8  
             b' 8  
             a' 8  
             g' 8  
             \bar "|"  %{ end measure 5 %} 
             c'' 4  
             \color "red" e'' 8  
             \color "red" g'' 8  
             \color "red" fis'' 8  \fermata  
             e'' 8  
             \bar "|"  %{ end measure 6 %} 
             d'' 8.  
             e'' 16  
             d'' 8  
             c'' 8  
             b' 8  
             a' 8  
             \bar "|"  %{ end measure 7 %} 
             g' 2  
             r 8  \fermata  
             \bar "||"  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
