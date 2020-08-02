\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB124761_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 2/2
             \key c \major 
             \key c \major 
             c'' 4  
             c'' 4  
             c'' 4  
             c'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" c'' 4  
             \color "blue" a' 4  
             \color "blue" g' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 2 %} 
             c'' 4  
             c'' 8  
             c'' 8  
             c'' 4  
             c'' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" c'' 4  
             \color "blue" a' 4  
             \color "blue" g' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 4 %} 
             c'' 4  
             c'' 4  
             c'' 4  
             c'' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" d'' 4  
             \color "blue" g' 4  
             \color "blue" g' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 6 %} 
             c'' 4  
             c'' 8  
             c'' 8  
             c'' 4  
             b' 8  
             c'' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" d'' 4  
             \color "blue" g' 4  
             \color "blue" g' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 8 %} 
             c'' 4  
             c'' 4  
             c'' 4  
             c'' 4  
             \bar "|"  %{ end measure 9 %} 
             d'' 4  
             \color "red" g' 4  
             \color "red" g' 4  
             \color "red" g' 4  \fermata  
             \bar "|"  %{ end measure 10 %} 
             c'' 4  
             c'' 4  
             c'' 4  
             b' 8  
             c'' 8  
             \bar "|"  %{ end measure 11 %} 
             d'' 4  
             \color "red" g' 4  
             \color "red" g' 4  
             \color "red" g' 4  \fermata  
             \bar "|"  %{ end measure 12 %} 
             e'' 4  
             \color "blue" d'' 8  
             \color "blue" e'' 8  
             \color "blue" f'' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 13 %} 
             d'' 4  
             \color "blue" c'' 8  
             \color "blue" d'' 8  
             \color "blue" e'' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 14 %} 
             c'' 4  
             c'' 4  
             g' 4  
             e'' 8  
             c'' 8  
             \bar "|"  %{ end measure 15 %} 
             c'' 4  
             b' 4  
             c'' 4  
             r 4  
             \bar "|."  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_1" 
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
              "Miss" 
               _  
               _  
               _  
              "rule_1" 
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Miet" -- 
              "je " -- 
              "Want" -- 
              "j' is"__ 
              "al" -- 
              "tijd"__ 
              "ziek," 
              "ge" -- 
              "heel"__ 
              "de" 
              "week" 
              "en" 
              "'s zon" -- 
              "dags"__ 
              "niet." 
              "'s Zon" -- 
              "dags"__ 
              "staat" 
              "zij" 
              "aan" 
              "haar" 
              "deur" 
              "om" 
              "te" 
              "ver" -- 
              "wach" -- 
              "ten"__ 
              "haar" 
              "ser" -- 
              "vi" -- 
              "teur,"__ 
              "ser" -- 
              "vi" -- 
              "teur"__ 
              "met" 
              "twee" 
              "roo" 
              "ka" -- 
              "ken."__ 
              "Maat" -- 
              "je"__ 
              "wilt" 
              "gij" 
              "mijn" 
              "broek" 
              "ver" -- 
              "ma" -- 
              "ken?"__ 
              "Roe" -- 
              "ke" -- 
              "doek" -- 
              "doek"__ 
              "roe" -- 
              "ke" -- 
              "doek" -- 
              "doek,"__ 
              "kus" 
              "de" 
              "bil" -- 
              "le"__ 
              "van" 
              "As" -- 
              "se" -- 
              "broek."__ 
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
