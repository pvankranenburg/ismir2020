\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1784"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 2/4
             \key ees \major 
             \key ees \major 
             bes' 8  
             \bar "|"  %{ end measure 0 %} 
             g' 8  
             g' 8  
             \color "blue" g' 8  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" g' 4.  \fermata  
             f' 8  
             \bar "|"  %{ end measure 2 %} 
             g' 8  
             f' 8  
             g' 8  
             \color "blue" aes' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" g' 8  
             \color "blue" f' 8  
             r 8  \fermata  
             f' 8  
             \bar "|"  %{ end measure 4 %} 
             f' 8  
             f' 8  
             \color "blue" f' 8  
             \color "blue" f' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" f' 4.  \fermata  
             g' 8  
             \bar "|"  %{ end measure 6 %} 
             aes' 8  
             g' 8  
             aes' 8  
             \color "blue" bes' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" aes' 8  
             \color "blue" g' 8  
             r 8  \fermata  
             bes' 8  
             \bar "|"  %{ end measure 8 %} 
             c'' 8  
             bes' 8  
             c'' 8  
             d'' 8  
             \bar "|"  %{ end measure 9 %} 
             ees'' 8  
             \color "blue" d'' 16  
             \color "blue" c'' 16  
             \color "blue" bes' 8  \fermata  
             aes' 8  
             \bar "|"  %{ end measure 10 %} 
             g' 4  
             f' 4  
             \bar "|"  %{ end measure 11 %} 
             ees' 4  
             r 8  \fermata  
             \bar "||"  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
              "rule_6" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_6" 
               _  
               _  
               _  
               _  
               _  
              "rule_7" 
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
               _  
               _  
              "rule_11" 
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
