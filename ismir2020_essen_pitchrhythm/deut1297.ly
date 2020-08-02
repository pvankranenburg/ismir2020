\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1297"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 3/4
             \key bes \major 
             \key bes \major 
             d' 8  
             f' 8  
             \bar "|"  %{ end measure 0 %} 
             bes' 4  
             f' 4  
             g' 8  
             a' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" bes' 8  
             \color "blue" f' 8  
             \color "blue" f' 4  \fermata  
             a' 8  
             bes' 8  
             \bar "|"  %{ end measure 2 %} 
             c'' 4.  
             f' 8  
             \color "blue" g' 8  
             \color "blue" f' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" d' 2  \fermata  
             f' 8  
             f' 8  
             \bar "|"  %{ end measure 4 %} 
             ees'' 8  
             d'' 8  
             c'' 8  
             bes' 8  
             bes' 8  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" g' 4  
             \color "blue" f' 4  \fermata  
             f' 8  
             a' 8  
             \bar "|"  %{ end measure 6 %} 
             bes' 8  
             d'' 8  
             f'' 4  
             ees'' 8  
             c'' 8  
             \bar "|"  %{ end measure 7 %} 
             bes' 2  \fermata  
             \bar "||"  %{ end measure 8 %} 
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
              "rule_10" 
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
