\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut2164"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 4/4
             \key d \major 
             \key d \major 
             fis' 8  
             g' 8  
             \bar "|"  %{ end measure 0 %} 
             a' 4  
             a' 4  
             a' 4  
             b' 8  
             cis'' 8  
             \bar "|"  %{ end measure 1 %} 
             d'' 4  
             \color "red" fis' 8  
             \color "red" g' 8  
             \color "red" a' 4  \fermata  
             b' 8  
             cis'' 8  
             \bar "|"  %{ end measure 2 %} 
             d'' 4  
             fis' 4  
             \color "blue" e' 4  
             \color "blue" cis' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" d' 2  
             r 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 4 %} 
             d'' 4.  
             e'' 8  
             fis'' 8  
             e'' 8  
             d'' 8  
             cis'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" cis'' 4  
             \color "blue" b' 4  
             \color "blue" b' 4  \fermata  
             b' 8  
             cis'' 8  
             \bar "|"  %{ end measure 6 %} 
             d'' 4  
             d'' 8  
             d'' 8  
             e'' 8  
             d'' 8  
             cis'' 8  
             b' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" a' 4  
             \color "blue" g' 4  
             \color "blue" fis' 4  \fermata  
             a' 8  
             cis'' 8  
             \bar "|"  %{ end measure 8 %} 
             d'' 4  
             fis' 4  
             e' 4  
             cis' 4  
             \bar "|"  %{ end measure 9 %} 
             d' 2  
             r 4  \fermata  
             \bar "||"  %{ end measure 10 %} 
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
              "rule_5" 
               _  
               _  
               _  
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
               _  
               _  
              "rule_21" 
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
