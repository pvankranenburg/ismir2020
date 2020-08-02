\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut0675"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 3/4
             \key d \major 
             \key d \major 
             a 8  
             \bar "|"  %{ end measure 0 %} 
             d' 8  
             fis' 8  
             a' 4  
             g' 8  
             cis' 8  
             \bar "|"  %{ end measure 1 %} 
             e' 8.  
             \color "blue" g' 16  
             \color "blue" g' 4  
             \color "blue" fis' 8  \fermata  
             a 8  
             \bar "|"  %{ end measure 2 %} 
             d' 8  
             fis' 8  
             a' 4  
             d' 8  
             \color "blue" fis' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" fis' 4  
             \color "blue" e' 4  
             r 8  \fermata  
             a' 8  
             \bar "|"  %{ end measure 4 %} 
             fis' 8  
             a' 8  
             d'' 4  
             cis'' 8  
             b' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" b' 8  
             \color "blue" a' 8  
             \color "blue" fis' 4  
             r 8  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 6 %} 
             a' 8  
             fis' 8  
             g' 4  
             cis' 8  
             e' 8  
             \bar "|"  %{ end measure 7 %} 
             e' 4  
             d' 4  
             r 8  \fermata  
             \bar "||"  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_33" 
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
              "rule_2" 
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
