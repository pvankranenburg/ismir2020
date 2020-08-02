\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB134063_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 2/4
             \key c \major 
             \key a \minor 
             e' 8  
             \bar "|"  %{ end measure 0 %} 
             a' 8  
             c'' 8  
             b' 8  
             c'' 8  
             \bar "|"  %{ end measure 1 %} 
             d'' 8  
             c'' 8  
             b' 8  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             b' 4  
             \color "red" c'' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "red" b' 8  
             \color "red" a' 16  
             \color "red" g' 16  \fermata  
             \color "red" a' 16  
             \color "red" b' 16  
             a' 8  
             e' 8  
             \bar "|"  %{ end measure 4 %} 
             a' 8  
             c'' 8  
             b' 8  
             c'' 8  
             \bar "|"  %{ end measure 5 %} 
             d'' 8  
             c'' 8  
             b' 8  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" b' 4  
             \color "blue" c'' 4  
             \bar "|"  %{ end measure 7 %} 
             a' 4  \fermata  
             r 8  
             c'' 8  
             \bar "|"  %{ end measure 8 %} 
             g' 8  
             c'' 8  
             c'' 8  
             d'' 8  
             \bar "|"  %{ end measure 9 %} 
             e'' 4  
             d'' 8  
             d'' 8  
             \bar "|"  %{ end measure 10 %} 
             e'' 8  
             c'' 8  
             \color "blue" b' 8  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" c'' 4  
             b' 8  \fermata  
             e'' 8  
             \bar "|"  %{ end measure 12 %} 
             e'' 8  
             d'' 8  
             c'' 8  
             e'' 8  
             \bar "|"  %{ end measure 13 %} 
             d'' 8  
             c'' 8  
             b' 8  
             r 16  
             b' 16  
             \bar "|"  %{ end measure 14 %} 
             b' 4  
             c'' 4  
             \bar "|"  %{ end measure 15 %} 
             a' 4  
             r 4  
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
              "Miss" 
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
              "rule_9" 
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
              "Dat" 
              "Mel" -- 
              "po" -- 
              "me" -- 
              "na"__ 
              "de" -- 
              "ze"__ 
              "droe" -- 
              "ve"__ 
              "dood" 
              "be" -- 
              " " 
              "schreyt"__ 
              " " 
              "De" -- 
              "zer"__ 
              "tyd," 
              "Dat" 
              "Mel" -- 
              "po" -- 
              "me" -- 
              "na"__ 
              "de" -- 
              "ze"__ 
              "droe" -- 
              "ve"__ 
              "dood" 
              "be" -- 
              "schreyt."__ 
              "Maer" 
              "Cli" -- 
              "o"__ 
              "moet" 
              "be" -- 
              "schry" -- 
              "ven"__ 
              "het" 
              "kloek" 
              "en" 
              "vroom" 
              "be" -- 
              "dry" -- 
              "ven"__ 
              "Van" 
              "d'heer" 
              "ad" -- 
              "mi" -- 
              "rael"__ 
              "Bart" 
              "ver" -- 
              "maerd,"__ 
              "Zeer" 
              "vroom" 
              "van" 
              "aerd." 
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
