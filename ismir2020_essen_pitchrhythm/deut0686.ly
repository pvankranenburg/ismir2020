\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut0686"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 6/8
             \key c \major 
             \key a \minor 
             e' 8  
             \bar "|"  %{ end measure 0 %} 
             a' 8.  
             e'' 16  
             e'' 8  
             e'' 8  
             d'' 8  
             f'' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" e'' 4  
             \color "blue" c'' 8  
             \color "blue" b' 4  \fermata  
             b' 8  
             \bar "|"  %{ end measure 2 %} 
             d'' 8.  
             c'' 16  
             b' 8  
             c'' 8  
             \color "blue" e'' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" b' 4.  ~  
             \color "blue" b' 4  \fermata  
             b' 8  
             \bar "|"  %{ end measure 4 %} 
             c'' 8.  
             b' 16  
             a' 8  
             c'' 8.  
             b' 16  
             a' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" gis' 4  
             \color "blue" a' 8  
             \color "blue" b' 4  \fermata  
             b' 8  
             \bar "|"  %{ end measure 6 %} 
             c'' 8.  
             b' 16  
             a' 8  
             c'' 8.  
             b' 16  
             a' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" gis' 4  
             \color "blue" a' 8  
             \color "blue" b' 4  \fermata  
             gis' 8  
             \bar "|"  %{ end measure 8 %} 
             a' 4.  
             e'' 4.  
             \bar "|"  %{ end measure 9 %} 
             c'' 4  
             b' 8  
             a' 4  \fermata  
             \bar "||"  %{ end measure 10 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_11" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_11" 
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
