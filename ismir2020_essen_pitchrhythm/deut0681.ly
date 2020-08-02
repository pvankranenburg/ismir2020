\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut0681"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 4/4
             \key bes \major 
             \key g \minor 
             d'' 4  
             \bar "|"  %{ end measure 0 %} 
             d'' 4  
             \color "red" c'' 8  
             \color "red" bes' 8  
             \color "red" a' 4  
             d'' 4  
             \bar "|"  %{ end measure 1 %} 
             d'' 4  
             \color "blue" c'' 8  
             \color "blue" bes' 8  
             \color "blue" a' 4.  \fermata  
             c'' 8  
             \bar "|"  %{ end measure 2 %} 
             bes' 4  
             a' 4  
             g' 4  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" fis' 2  
             \color "blue" g' 4  \fermata  
             g' 8  
             g' 8  
             \bar "|"  %{ end measure 4 %} 
             a' 4  
             bes' 8  
             bes' 8  
             c'' 4  
             a' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "red" bes' 4  
             \color "red" c'' 4  
             \color "red" d'' 4.  \fermata  
             c'' 8  
             \bar "|"  %{ end measure 6 %} 
             bes' 4  
             a' 4  
             g' 4  
             g' 4  
             \bar "|"  %{ end measure 7 %} 
             fis' 2  
             g' 4  \fermata  
             \bar "||"  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
              "rule_11" 
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
              "rule_18" 
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
