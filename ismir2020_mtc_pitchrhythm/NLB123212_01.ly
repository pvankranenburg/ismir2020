\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB123212_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 2/4
             \key c \major 
             \key c \major 
             g' 8  
             g' 8  
             g' 8  
             c'' 8  
             \bar "|"  %{ end measure 1 %} 
             e' 8  
             e' 8  
             e' 8  
             g' 8  
             \bar "|"  %{ end measure 2 %} 
             c' 8  
             c' 8  
             d' 8  
             \color "blue" d' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" e' 4  
             \color "blue" c' 4  \fermata  
             \bar "|"  %{ end measure 4 %} 
             g' 8  
             g' 8  
             g' 8  
             c'' 8  
             \bar "|"  %{ end measure 5 %} 
             e' 8  
             e' 8  
             e' 8  
             g' 8  
             \bar "|"  %{ end measure 6 %} 
             c' 8  
             c' 8  
             d' 8  
             \color "blue" d' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" e' 4  
             \color "blue" c' 4  \fermata  
             \bar ".|"  %{ end measure 8 %} 
             g' 8  
             g' 8  
             a' 8  
             \color "red" a' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "red" a' 4  
             \color "red" f' 4  
             \bar "|"  %{ end measure 10 %} 
             a' 8  
             b' 8  
             c'' 8  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" a' 4  
             \color "blue" g' 4  \fermata  
             \bar "|"  %{ end measure 12 %} 
             e' 8  
             e' 8  
             e' 8  
             e' 16  
             d' 16  
             \bar "|"  %{ end measure 13 %} 
             c' 8  
             c' 8  
             c' 8  
             e' 8  
             \bar "|"  %{ end measure 14 %} 
             f' 8  
             f' 8  
             g' 8  
             g' 8  
             \bar "|"  %{ end measure 15 %} 
             c' 2  
             \bar "|."  %{ end measure 16 %} 
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
               _  
               _  
               _  
              "rule_26" 
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
               _  
               _  
              "rule_26" 
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
              "rule_7" 
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
               _  
               _  
               _  
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Fran" -- 
              "sche"__ 
              "rat" -- 
              "ten,"__ 
              "rolt" 
              "uw" 
              "mat" -- 
              "ten,"__ 
              "wilt" 
              "naar" 
              "huis" 
              "toe" 
              "kee" -- 
              "ren;"__ 
              "zegt" 
              "dag" 
              "vrien" -- 
              "den,"__ 
              "die" 
              "ons" 
              "min" -- 
              "den,"__ 
              "of" 
              "men" 
              "zal" 
              "u" 
              "lee" -- 
              "ren"__ 
              "op" 
              "de" 
              "pij" -- 
              "pen"__ 
              "dan" -- 
              "sen;"__ 
              "nu" 
              "hebt" 
              "gij" 
              "goÃª" 
              "kan" -- 
              "sen."__ 
              "Weg," 
              "Gas" -- 
              "con,"__ 
              "wi" 
              "de" 
              "bon," 
              "bon," 
              "bon," 
              "voor 't" 
              "rus" -- 
              "sisch"__ 
              "goed" 
              "ka" -- 
              "non."__ 
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
