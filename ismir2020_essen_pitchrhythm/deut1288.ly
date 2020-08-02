\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "deut1288"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \time 6/8
             \key d \major 
             \key d \major 
             d' 8  
             \bar "|"  %{ end measure 0 %} 
             d' 4  
             fis' 8  
             a' 4  
             b' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" a' 4  
             \color "blue" d'' 8  
             \color "blue" fis' 4  \fermata  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             a' 4  
             g' 8  
             \color "blue" e' 4  
             \color "blue" cis' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" d' 4.  
             r 4  \fermata  
             d' 8  
             \bar "|"  %{ end measure 4 %} 
             d' 4  
             fis' 8  
             a' 4  
             b' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" a' 4  
             \color "blue" d'' 8  
             \color "blue" fis' 4  \fermata  
             a' 8  
             \bar "|"  %{ end measure 6 %} 
             a' 4  
             g' 8  
             \color "blue" e' 4  
             \color "blue" cis' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" d' 4.  
             r 4  \fermata  
             a' 8  
             \bar "|"  %{ end measure 8 %} 
             gis' 4  
             e' 8  
             e' 8  
             fis' 8  
             gis' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" a' 4  
             \color "blue" cis'' 8  
             \color "blue" cis'' 4  \fermata  
             cis'' 8  
             \bar "|"  %{ end measure 10 %} 
             d'' 4  
             b' 8  
             e'' 8  
             \color "blue" d'' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" a' 4.  ~  
             \color "blue" a' 4  \fermata  
             g' 8  
             \bar "|"  %{ end measure 12 %} 
             \color "red" fis' 4  
             \color "red" a' 8  
             \color "red" a' 4  
             b' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "blue" a' 4  
             \color "blue" d'' 8  
             \color "blue" fis' 4  \fermata  
             a' 8  
             \bar "|"  %{ end measure 14 %} 
             b' 4  
             a' 8  
             g' 4  
             e' 8  
             \bar "|"  %{ end measure 15 %} 
             d' 4.  
             r 4  \fermata  
             \bar "||"  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_6" 
               _  
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
              "rule_7" 
               _  
               _  
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
              "rule_13" 
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
