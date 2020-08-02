\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut0654"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 6/8
             \key g \major 
             \key g \major 
             d'' 8  
             \bar "|"  %{ end measure 0 %} 
             d'' 4  
             d'' 8  
             g'' 4  
             g'' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" b' 4  
             \color "red" b' 8  
             \color "red" d'' 4  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 2 %} 
             a' 4  
             a' 8  
             g'' 8  
             e'' 8  
             \color "blue" cis'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" e'' 4.  
             \color "blue" d'' 4  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 4 %} 
             d'' 4  
             d'' 8  
             g'' 4  
             g'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" b' 4  
             \color "red" b' 8  
             \color "red" d'' 4  \fermata  
             a' 8  
             \bar "|"  %{ end measure 6 %} 
             b' 8  
             e'' 8  
             d'' 8  
             c'' 8  
             b' 8  
             a' 8  
             \bar "|"  %{ end measure 7 %} 
             a' 4.  
             g' 4  \fermata  
             \bar "||"  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
