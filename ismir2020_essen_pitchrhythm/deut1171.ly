\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1171"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \time 2/4
             \key g \major 
             \key g \major 
             d'' 8.  
             c'' 16  
             b' 8  
             b' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" a' 8  
             \color "red" a' 8  
             \color "red" g' 8  \fermata  
             g' 8  
             \bar "|"  %{ end measure 2 %} 
             a' 8  
             a' 8  
             b' 8  
             d'' 8  
             \bar "|"  %{ end measure 3 %} 
             d'' 16  
             \color "blue" c'' 16  
             \color "blue" b' 8  
             \color "blue" a' 4  \fermata  
             \bar "|"  %{ end measure 4 %} 
             a' 8.  
             b' 16  
             c'' 8  
             a' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" b' 8  
             \color "red" e'' 8  
             \color "red" d'' 8  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 6 %} 
             c'' 8.  
             b' 16  
             a' 8  
             d'' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" b' 8  
             \color "blue" a' 8  
             \color "blue" g' 4  \fermata  
             \bar "|"  %{ end measure 8 %} 
             a' 8.  
             b' 16  
             c'' 8  
             a' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "red" b' 8  
             \color "red" e'' 8  
             \color "red" d'' 8  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 10 %} 
             c'' 8.  
             b' 16  
             a' 8  
             d'' 8  
             \bar "|"  %{ end measure 11 %} 
             b' 8  
             a' 8  
             g' 4  \fermata  
             \bar "||"  %{ end measure 12 %} 
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
               _  
              "rule_11" 
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
              "rule_3" 
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
