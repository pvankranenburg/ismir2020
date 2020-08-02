\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1225"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 6/8
             \key g \major 
             \key g \major 
             g' 16  
             b' 16  
             \bar "|"  %{ end measure 0 %} 
             d'' 8  
             d'' 8  
             d'' 8  
             d'' 4  
             \color "red" e'' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" d'' 4.  
             \color "red" b' 8  
             r 8  
             d'' 8  
             \bar "|"  %{ end measure 2 %} 
             \color "blue" c'' 4  
             \color "blue" b' 8  
             \color "blue" a' 4  \fermata  
             g' 16  
             b' 16  
             \bar "|"  %{ end measure 3 %} 
             d'' 8  
             d'' 8  
             d'' 8  
             d'' 4  
             \color "red" e'' 8  
             \bar "|"  %{ end measure 4 %} 
             \color "red" d'' 4.  
             \color "red" b' 8  
             r 8  
             d'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" c'' 4  
             \color "blue" b' 8  
             \color "blue" a' 4  \fermata  
             d' 8  
             \bar "|"  %{ end measure 6 %} 
             g' 4  
             a' 8  
             b' 4  
             \color "red" c'' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "red" d'' 4.  
             \color "red" c'' 8  
             r 8  
             d'' 8  
             \bar "|"  %{ end measure 8 %} 
             c'' 8  
             \color "blue" b' 8  
             \color "blue" a' 8  
             \color "blue" g' 4  \fermata  
             d' 8  
             \bar "|"  %{ end measure 9 %} 
             g' 4  
             a' 8  
             b' 4  
             \color "red" c'' 8  
             \bar "|"  %{ end measure 10 %} 
             \color "red" d'' 4.  
             \color "red" c'' 8  
             r 8  
             d'' 8  
             \bar "|"  %{ end measure 11 %} 
             c'' 8  
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
               _  
               _  
              "rule_20" 
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
              "rule_20" 
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
              "rule_25" 
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
              "rule_25" 
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
