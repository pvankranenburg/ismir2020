\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB139503_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 4/4
             \key g \major 
             \key g \major 
             g' 4  
             d' 8.  
             d' 16  
             g' 4  
             b' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" d'' 4.  
             \color "blue" e'' 8  
             \color "blue" d'' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 2 %} 
             g' 8  
             d' 8  
             d' 8  
             d' 8  
             g' 8  
             d' 8  
             d' 8  
             d' 8  
             \bar "|"  %{ end measure 3 %} 
             g' 8  
             d' 8  
             d' 8  
             d' 8  
             g' 8  
             \color "red" d' 8  
             \color "red" d' 8  
             \color "red" d' 8  \fermata  
             \bar "|"  %{ end measure 4 %} 
             g' 4  
             d' 8.  
             d' 16  
             g' 4  
             b' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" d'' 4  
             \color "blue" e'' 4  
             \color "blue" d'' 2  \fermata  
             \bar "|"  %{ end measure 6 %} 
             d'' 4  
             cis'' 8  
             b' 8  
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 7 %} 
             a' 4  
             \color "blue" b' 8  
             \color "blue" cis'' 8  
             \color "blue" d'' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 8 %} 
             g' 8  
             d' 8  
             d' 8  
             d' 8  
             g' 8  
             d' 8  
             d' 8  
             d' 8  
             \bar "|"  %{ end measure 9 %} 
             g' 8  
             d' 8  
             d' 8  
             d' 8  
             g' 8  
             \color "red" d' 8  
             \color "red" d' 8  
             \color "red" d' 8  \fermata  
             \bar "|"  %{ end measure 10 %} 
             g' 4  
             d' 4  
             g' 4  
             b' 4  
             \bar "|"  %{ end measure 11 %} 
             d'' 4  ~  
             d'' 4  
             g'' 4  
             r 4  
             \bar "|."  %{ end measure 12 %} 
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
              "Miss" 
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Schild" -- 
              "wacht" -- 
              "je,"__ 
              "wend" 
              "je" 
              "hoofd" 
              "zoo" 
              "niet," 
              "'t Is" 
              "O" -- 
              "ran" -- 
              "je,"__ 
              "'t blijft" 
              "O" -- 
              "ran" -- 
              "je,"__ 
              "'t Is" 
              "O" -- 
              "ran" -- 
              "je,"__ 
              "'t blijft" 
              "O" -- 
              "ran" -- 
              "je!"__ 
              "Of" 
              "je" 
              "nu" 
              "schik" 
              "hebt" 
              "of" 
              "ver" -- 
              "driet,"__ 
              "Toch" 
              "is" 
              "'t O" -- 
              "ran" -- 
              "je,"__ 
              "dat" 
              "je" 
              " " 
              "ziet!" 
              "'t Is" 
              "O" -- 
              "ran" -- 
              "je,"__ 
              "'t blijft" 
              "O" -- 
              "ran" -- 
              "je,"__ 
              "'t Is" 
              "O" -- 
              "ran" -- 
              "je,"__ 
              "'t blijft" 
              "O" -- 
              "ran" -- 
              "je!"__ 
              "'t Is" 
              "O" -- 
              "ran" -- 
              "je"__ 
              "bo" -- 
              "ven!"__ 
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
