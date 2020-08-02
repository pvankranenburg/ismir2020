\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1921"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \time 4/4
             \key ees \major 
             \key ees \major 
             ees' 4  
             ees' 8  
             g' 8  
             bes' 4  
             bes' 4  
             \bar "|"  %{ end measure 1 %} 
             bes' 8  
             aes' 8  
             f' 8  
             \color "red" aes' 8  
             \color "red" g' 4  
             \color "red" ees' 4  \fermata  
             \bar "|"  %{ end measure 2 %} 
             ees'' 4  
             ees'' 4  
             f'' 4.  
             d'' 8  
             \bar "|"  %{ end measure 3 %} 
             f'' 8  
             ees'' 8  
             d'' 8  
             \color "blue" c'' 8  
             \color "blue" bes' 4  
             \color "blue" f' 4  \fermata  
             \bar "|"  %{ end measure 4 %} 
             bes' 4.  
             g' 8  
             ees'' 4.  
             bes' 8  
             \bar "|"  %{ end measure 5 %} 
             bes' 8  
             aes' 8  
             \color "blue" g' 8  
             \color "blue" aes' 8  
             \color "blue" f' 2  \fermata  
             \bar "|"  %{ end measure 6 %} 
             f'' 4  
             d'' 4  
             ees'' 4  
             g' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" aes' 4  
             \color "blue" bes' 4  
             \color "blue" ees' 2  \fermata  
             \bar "|"  %{ end measure 8 %} 
             ees' 4  
             ees' 8  
             g' 8  
             bes' 4  
             bes' 4  
             \bar "|"  %{ end measure 9 %} 
             bes' 8  
             aes' 8  
             f' 8  
             \color "red" aes' 8  
             \color "red" g' 4  
             \color "red" ees' 4  \fermata  
             \bar "|"  %{ end measure 10 %} 
             ees'' 4  
             ees'' 4  
             f'' 4.  
             d'' 8  
             \bar "|"  %{ end measure 11 %} 
             f'' 8  
             ees'' 8  
             d'' 8  
             \color "blue" c'' 8  
             \color "blue" bes' 4  
             \color "blue" f' 4  \fermata  
             \bar "|"  %{ end measure 12 %} 
             bes' 4.  
             g' 8  
             ees'' 4.  
             bes' 8  
             \bar "|"  %{ end measure 13 %} 
             bes' 8  
             aes' 8  
             \color "blue" g' 8  
             \color "blue" aes' 8  
             \color "blue" f' 2  \fermata  
             \bar "|"  %{ end measure 14 %} 
             f'' 4  
             d'' 4  
             ees'' 4  
             g' 4  
             \bar "|"  %{ end measure 15 %} 
             aes' 4  
             bes' 4  
             ees' 2  \fermata  
             \bar "||"  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_35" 
               _  
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
              "rule_1" 
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
              "rule_35" 
               _  
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
