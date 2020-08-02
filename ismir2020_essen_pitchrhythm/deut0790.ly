\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut0790"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 3/4
             \key c \major 
             \key a \minor 
             a' 4  
             \bar "|"  %{ end measure 0 %} 
             a' 2  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             e'' 2  
             d'' 4  
             \bar "|"  %{ end measure 2 %} 
             \color "red" e'' 2  
             \color "red" c'' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "red" b' 2  \fermata  
             b' 4  
             \bar "|"  %{ end measure 4 %} 
             e'' 2  
             d'' 4  
             \bar "|"  %{ end measure 5 %} 
             c'' 2  
             b' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" a' 2  
             \color "blue" c'' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" b' 2  \fermata  
             b' 4  
             \bar "|"  %{ end measure 8 %} 
             a' 4  
             \color "blue" gis' 4  
             \color "blue" a' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" e' 2  \fermata  
             b' 4  
             \bar "|"  %{ end measure 10 %} 
             c'' 2  
             c'' 4  
             \bar "|"  %{ end measure 11 %} 
             a' 2  
             b' 4  
             \bar "|"  %{ end measure 12 %} 
             c'' 4.  
             \color "red" d'' 8  
             \color "red" e'' 4  
             \bar "|"  %{ end measure 13 %} 
             \color "red" e'' 2  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 14 %} 
             c'' 4  
             e'' 4  
             d'' 4  
             \bar "|"  %{ end measure 15 %} 
             c'' 4  
             b' 2  
             \bar "|"  %{ end measure 16 %} 
             a' 2.  
             \bar "|"  %{ end measure 17 %} 
             a' 4  
             r 4  \fermata  
             \bar "||"  %{ end measure 18 %} 
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
              "rule_9" 
               _  
               _  
               _  
               _  
              "rule_21" 
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
