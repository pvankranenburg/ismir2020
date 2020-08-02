\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut0625"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 2/4
             \key ees \major 
             \key ees \major 
             ees' 8  
             g' 8  
             \bar "|"  %{ end measure 0 %} 
             bes' 8  
             bes' 8  
             bes' 8  
             \color "red" bes' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" aes' 8  
             \color "red" g' 8  \fermata  
             f' 8  
             g' 8  
             \bar "|"  %{ end measure 2 %} 
             bes' 8  
             f' 8  
             \color "red" f' 8  
             \color "red" f' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "red" f' 4  \fermata  
             ees' 8  
             g' 8  
             \bar "|"  %{ end measure 4 %} 
             bes' 8  
             bes' 8  
             bes' 8  
             \color "red" bes' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" aes' 8  
             \color "red" g' 8  \fermata  
             f' 8  
             g' 8  
             \bar "|"  %{ end measure 6 %} 
             bes' 8  
             f' 8  
             \color "red" f' 8  
             \color "red" f' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "red" f' 4  \fermata  
             ees'' 8  
             c'' 8  
             \bar "|"  %{ end measure 8 %} 
             bes' 8  
             bes' 8  
             \color "blue" aes' 8  
             \color "blue" f' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" ees' 4  \fermata  
             ees' 8  
             ees' 8  
             \bar "|"  %{ end measure 10 %} 
             c'' 4  
             c'' 8  
             c'' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "red" bes' 8  
             \color "red" ees'' 8  
             \color "red" d'' 8  \fermata  
             c'' 8  
             \bar "|"  %{ end measure 12 %} 
             bes' 8  
             bes' 8  
             \color "blue" aes' 8  
             \color "blue" f' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "blue" ees' 4  \fermata  
             ees' 8  
             g' 8  
             \bar "|"  %{ end measure 14 %} 
             bes' 4  
             d' 8  
             d' 8  
             \bar "|"  %{ end measure 15 %} 
             ees' 4  \fermata  
             \bar "||"  %{ end measure 16 %} 
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
              "Miss" 
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
              "Miss" 
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
