\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1923"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \time 3/4
             \key ees \major 
             \key ees \major 
             ees' 2  
             g' 4  
             \bar "|"  %{ end measure 1 %} 
             bes' 2  
             g' 4  
             \bar "|"  %{ end measure 2 %} 
             ees'' 2  
             \color "red" bes' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "red" c'' 2  
             \color "red" bes' 4  \fermata  
             \bar "|"  %{ end measure 4 %} 
             ees'' 2  
             \color "red" bes' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "red" c'' 2  
             \color "red" bes' 4  
             \bar "|"  %{ end measure 6 %} 
             bes' 4  
             aes' 4  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" g' 4  
             \color "blue" f' 4  
             r 4  \fermata  
             \bar "|"  %{ end measure 8 %} 
             bes' 2  
             g' 4  
             \bar "|"  %{ end measure 9 %} 
             c'' 2  
             bes' 4  
             \bar "|"  %{ end measure 10 %} 
             bes' 4.  
             \color "blue" aes' 8  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" f' 2  
             r 4  \fermata  
             \bar "|"  %{ end measure 12 %} 
             ees'' 2  
             bes' 4  
             \bar "|"  %{ end measure 13 %} 
             c'' 2  
             bes' 8  
             aes' 8  
             \bar "|"  %{ end measure 14 %} 
             \color "blue" g' 2  
             \color "blue" f' 4  
             \bar "|"  %{ end measure 15 %} 
             \color "blue" ees' 2  
             r 4  \fermata  
             \bar "|"  %{ end measure 16 %} 
             ees' 2  
             g' 4  
             \bar "|"  %{ end measure 17 %} 
             bes' 2  
             g' 4  
             \bar "|"  %{ end measure 18 %} 
             ees'' 2  
             \color "red" bes' 4  
             \bar "|"  %{ end measure 19 %} 
             \color "red" c'' 2  
             \color "red" bes' 4  \fermata  
             \bar "|"  %{ end measure 20 %} 
             ees'' 2  
             \color "red" bes' 4  
             \bar "|"  %{ end measure 21 %} 
             \color "red" c'' 2  
             \color "red" bes' 4  
             \bar "|"  %{ end measure 22 %} 
             bes' 4  
             aes' 4  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 23 %} 
             \color "blue" g' 4  
             \color "blue" f' 4  
             r 4  \fermata  
             \bar "|"  %{ end measure 24 %} 
             bes' 2  
             g' 4  
             \bar "|"  %{ end measure 25 %} 
             c'' 2  
             bes' 4  
             \bar "|"  %{ end measure 26 %} 
             bes' 4.  
             \color "blue" aes' 8  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 27 %} 
             \color "blue" f' 2  
             r 4  \fermata  
             \bar "|"  %{ end measure 28 %} 
             ees'' 2  
             bes' 4  
             \bar "|"  %{ end measure 29 %} 
             c'' 2  
             bes' 8  
             aes' 8  
             \bar "|"  %{ end measure 30 %} 
             g' 2  
             f' 4  
             \bar "|"  %{ end measure 31 %} 
             ees' 2  
             r 4  \fermata  
             \bar "||"  %{ end measure 32 %} 
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
              "rule_10" 
               _  
               _  
               _  
               _  
              "rule_4" 
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
              "rule_4" 
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
              "rule_10" 
               _  
               _  
               _  
               _  
              "rule_4" 
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
