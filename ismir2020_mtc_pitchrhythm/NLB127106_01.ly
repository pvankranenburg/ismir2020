\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB127106_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 4/4
             \key d \major 
             \key d \major 
             a' 4  
             g' 4  
             fis' 4  
             e' 4  
             \bar "|"  %{ end measure 1 %} 
             d' 4  
             \color "red" e' 4  
             \color "red" fis' 4  
             \color "red" d' 4  \fermata  
             \bar "|"  %{ end measure 2 %} 
             d'' 4  
             cis'' 4  
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 4.  
             \color "blue" g' 8  
             \color "blue" fis' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 4 %} 
             e' 4  
             fis' 4  
             g' 4  
             e' 4  
             \bar "|"  %{ end measure 5 %} 
             fis' 4  
             \color "red" g' 4  
             \color "red" a' 4  
             \color "red" fis' 4  \fermata  
             \bar "|"  %{ end measure 6 %} 
             d'' 8  
             cis'' 8  
             d'' 8  
             b' 8  
             a' 4  
             fis' 4  
             \bar "|"  %{ end measure 7 %} 
             g' 4  
             \color "red" a' 4  
             \color "red" g' 4  
             \color "red" fis' 4  \fermata  
             \bar "|"  %{ end measure 8 %} 
             e'' 8  
             d'' 8  
             \color "red" cis'' 8  
             \color "red" b' 8  
             \color "red" a' 4.  
             fis' 8  
             \bar "|"  %{ end measure 9 %} 
             g' 4  
             e' 4  
             d' 4  
             r 4  
             \bar "|."  %{ end measure 10 %} 
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
              "rule_1" 
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
              "Miss" 
               _  
               _  
               _  
               _  
              "rule_29" 
               _  
               _  
               _  
               _  
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Waand" -- 
              "laar!"__ 
              "ziet" 
              "gij" 
              "in" 
              "de" 
              "da" -- 
              "len,"__ 
              "Aan" 
              "den" 
              "oe" -- 
              "ver"__ 
              "van" 
              "den" 
              "vliet," 
              "'t He" -- 
              "melsch"__ 
              "blau" -- 
              "we"__ 
              "bloem" -- 
              "pje"__ 
              "pra" -- 
              "len?"__ 
              "O" 
              " " 
              " " 
              "ver" -- 
              "geet"__ 
              "dat" 
              "bloem" -- 
              "pje"__ 
              "niet," 
              " " 
              "O" 
              " " 
              " " 
              "ver" -- 
              "geet"__ 
              "dat" 
              "bloem" -- 
              "pje"__ 
              "niet." 
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
#(set-global-staff-size 14)
#(set-global-staff-size 14)
\layout { indent = 0\cm}

#(set-global-staff-size 14)
\layout { indent = 0\cm}

#(set-global-staff-size 14)
\layout { indent = 0\cm}
