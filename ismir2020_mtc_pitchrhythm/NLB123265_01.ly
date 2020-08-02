\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB123265_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 4/4
             \key c \major 
             \key a \minor 
             a' 2  
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             gis' 4  
             \color "red" e' 4  
             \color "red" a' 2  
             \bar "|"  %{ end measure 2 %} 
             \color "red" b' 2  \fermata  
             d'' 2  
             \bar "|"  %{ end measure 3 %} 
             c'' 4  
             b' 4  
             \color "blue" a' 4  
             \color "blue" gis' 4  
             \bar "|"  %{ end measure 4 %} 
             \color "blue" a' 1  \fermata  
             \bar "|"  %{ end measure 5 %} 
             a' 2  
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 6 %} 
             gis' 4  
             \color "red" e' 4  
             \color "red" a' 2  
             \bar "|"  %{ end measure 7 %} 
             \color "red" b' 2  \fermata  
             d'' 2  
             \bar "|"  %{ end measure 8 %} 
             c'' 4  
             b' 4  
             \color "blue" a' 4  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" a' 2  \fermata  
             r 4  
             a' 4  
             \bar "|"  %{ end measure 10 %} 
             e'' 4  
             e'' 4  
             b' 4  
             c'' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "red" c'' 4  
             \color "red" c'' 4  
             \color "red" d'' 2  \fermata  
             \bar "|"  %{ end measure 12 %} 
             r 4  
             c'' 4  
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 13 %} 
             gis' 4  
             a' 4  
             b' 4  
             \color "blue" e' 4  
             \bar "|"  %{ end measure 14 %} 
             \color "blue" f' 2  
             \color "blue" e' 2  \fermata  
             \bar "|"  %{ end measure 15 %} 
             r 4  
             b' 4  
             c'' 4  
             d'' 4  
             \bar "|"  %{ end measure 16 %} 
             e'' 4  
             d'' 8  
             e'' 8  
             \color "red" c'' 4  
             \color "red" b' 4  
             \bar "|"  %{ end measure 17 %} 
             \color "red" a' 4  \fermata  
             \color "red" d'' 4  
             \color "red" c'' 4  
             \color "red" b' 4  
             \bar "|"  %{ end measure 18 %} 
             e'' 2  ~  
             e'' 8  
             d'' 8  
             c'' 8  
             d'' 8  
             \bar "|"  %{ end measure 19 %} 
             e'' 4  
             b' 4  
             d'' 4.  
             \color "red" c'' 8  
             \bar "|"  %{ end measure 20 %} 
             \color "red" c'' 4  
             \color "red" b' 2.  
             \bar "|"  %{ end measure 21 %} 
             a' 2  
             r 2  
             \bar "|."  %{ end measure 22 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_1" 
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
              "rule_20" 
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
              "rule_20" 
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
              "rule_28" 
               _  
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Ge" -- 
              "kwetst"__ 
              "ben" 
              "ik" 
              "van" 
              "bin" -- 
              "nen,"__ 
              "deur" -- 
              "wond"__ 
              "mijn" 
              "hert" 
              "zoo" 
              "zeer," 
              "van" 
              "u" -- 
              "wer"__ 
              "gant" -- 
              "scher"__ 
              "min" -- 
              "nen,"__ 
              "ge" -- 
              "kwetst"__ 
              "zoo" 
              "lang" 
              "zoo" 
              "meer." 
              "Waer" 
              "ik" 
              "my" 
              "wend," 
              "waer" 
              "ik" 
              "my" 
              "keer," 
              "'k en" 
              "kan" 
              "ge" -- 
              "rus" -- 
              "ten"__ 
              "dach" 
              "noch" 
              "nach" -- 
              "te;"__ 
              "waer" 
              "ik" 
              "my" 
              "wend," 
              "waer" 
              " " 
              "ik" 
              "my" 
              "keer," 
              "gy" 
              "zijt" 
              "al" -- 
              "leen"__ 
              " " 
              " " 
              " " 
              " " 
              "in" 
              "mijn" 
              "ge" -- 
              "dach" -- 
              " " 
              "te."__ 
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
