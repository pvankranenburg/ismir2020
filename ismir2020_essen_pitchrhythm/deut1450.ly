\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1450"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 4/4
             \key d \major 
             \key d \major 
             d'' 4  
             \bar "|"  %{ end measure 0 %} 
             d'' 4  
             d'' 4  
             d'' 4  
             d'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "red" a' 4  
             \color "red" a' 4  
             \color "red" a' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 2 %} 
             e'' 4.  
             d'' 8  
             \color "red" c'' 4  
             \color "red" b' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "red" a' 2  
             r 2  \fermata  
             \bar "|"  %{ end measure 4 %} 
             d'' 4  
             d'' 4  
             d'' 4  
             \color "red" d'' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "red" c'' 2  
             \color "red" a' 2  \fermata  
             \bar "|"  %{ end measure 6 %} 
             c'' 4.  
             bes' 8  
             \color "red" a' 4  
             \color "red" g' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "red" f' 2  
             r 2  \fermata  
             \bar "|"  %{ end measure 8 %} 
             f' 4  
             f' 4  
             g' 4  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" a' 2  
             \color "blue" d' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 10 %} 
             c'' 4  
             \color "blue" d'' 4  
             \color "blue" e'' 2  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" d'' 2  
             r 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 12 %} 
             d'' 4  
             d'' 4  
             d'' 4  
             d'' 4  
             \bar "|"  %{ end measure 13 %} 
             \color "blue" c'' 4.  
             \color "blue" b' 8  
             \color "blue" a' 2  \fermata  
             \bar "|"  %{ end measure 14 %} 
             d'' 4  
             d'' 4  
             d'' 4  
             d'' 4  
             \bar "|"  %{ end measure 15 %} 
             \color "blue" c'' 4.  
             \color "blue" b' 8  
             \color "blue" a' 4  \fermata  
             g' 4  
             \bar "|"  %{ end measure 16 %} 
             a' 4  
             \color "blue" f' 4  
             \color "blue" e' 2  
             \bar "|"  %{ end measure 17 %} 
             \color "blue" d' 2  
             r 4  \fermata  
             g' 4  
             \bar "|"  %{ end measure 18 %} 
             a' 4  
             f' 4  
             e' 2  
             \bar "|"  %{ end measure 19 %} 
             d' 2.  \fermata  
             \bar "||"  %{ end measure 20 %} 
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
              "Miss" 
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
              "Miss" 
               _  
               _  
               _  
               _  
               _  
              "rule_15" 
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
              "rule_34" 
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
              "rule_0" 
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
