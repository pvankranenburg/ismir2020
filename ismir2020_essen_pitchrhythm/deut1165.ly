\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1165"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \time 3/4
             \key d \major 
             \key d \major 
             d' 8  
             \color "red" e' 8  
             \bar "|"  %{ end measure 0 %} 
             \color "red" fis' 4  
             \color "red" fis' 4.  
             fis' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" fis' 8  
             \color "red" a' 8  
             \color "red" a' 4  \fermata  
             fis' 8  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             a' 4  
             g' 4  
             \color "blue" e' 8  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" fis' 4  
             r 4  \fermata  
             d' 8  
             \color "red" e' 8  
             \bar "|"  %{ end measure 4 %} 
             \color "red" fis' 4  
             \color "red" fis' 4.  
             fis' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" fis' 8  
             \color "red" a' 8  
             \color "red" a' 4  \fermata  
             fis' 8  
             a' 8  
             \bar "|"  %{ end measure 6 %} 
             a' 4  
             g' 4  
             \color "blue" e' 8  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" fis' 4  
             r 4  \fermata  
             fis' 4  
             \bar "|"  %{ end measure 8 %} 
             e' 8  
             gis' 8  
             b' 8  
             d'' 8  
             d'' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" cis'' 8  
             \color "blue" b' 8  
             \color "blue" a' 4  \fermata  
             e' 4  
             \bar "|"  %{ end measure 10 %} 
             e' 8  
             gis' 8  
             b' 8  
             d'' 8  
             \color "red" d'' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "red" cis'' 4.  
             \color "red" b' 8  \fermata  
             a' 4  
             \bar "|"  %{ end measure 12 %} 
             d'' 4  
             cis'' 4  
             b' 8.  
             \color "blue" b' 16  
             \bar "|"  %{ end measure 13 %} 
             \color "blue" b' 4  
             \color "blue" a' 4  \fermata  
             fis' 8  
             a' 8  
             \bar "|"  %{ end measure 14 %} 
             a' 4  
             g' 4  
             e' 8  
             g' 8  
             \bar "|"  %{ end measure 15 %} 
             \color "blue" fis' 8  
             \color "blue" a' 8  
             \color "blue" d'' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 16 %} 
             d'' 4  
             cis'' 4  
             b' 8.  
             \color "blue" b' 16  
             \bar "|"  %{ end measure 17 %} 
             \color "blue" b' 4  
             \color "blue" a' 4  \fermata  
             fis' 8  
             a' 8  
             \bar "|"  %{ end measure 18 %} 
             a' 4  
             g' 4  
             e' 8  
             g' 8  
             \bar "|"  %{ end measure 19 %} 
             fis' 2  \fermata  
             \bar "||"  %{ end measure 20 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
              "rule_34" 
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
              "rule_0" 
               _  
               _  
               _  
              "rule_34" 
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
              "rule_0" 
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
               _  
              "Miss" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_36" 
               _  
               _  
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
              "rule_36" 
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
