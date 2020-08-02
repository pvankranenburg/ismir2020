\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB126399_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \clef "treble" 
             \time 4/4
             \key f \major 
             \key f \major 
             f' 8  
             a' 8  
             \bar "|"  %{ end measure 0 %} 
             c'' 4  
             c'' 4  
             c'' 4  
             \color "blue" c'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" a' 4  
             \color "blue" f' 4  \fermata  
             r 4  
             g' 8  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             bes' 4.  
             c'' 8  
             \color "blue" a' 4.  
             \color "blue" bes' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" g' 2  \fermata  
             r 4  
             f' 8  
             a' 8  
             \bar "|"  %{ end measure 4 %} 
             c'' 4  
             c'' 4  
             c'' 4  
             \color "blue" c'' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" a' 4  
             \color "blue" f' 4  \fermata  
             r 4  
             c'' 8  
             d'' 8  
             \bar "|"  %{ end measure 6 %} 
             e'' 4.  
             c'' 8  
             \color "blue" d'' 4.  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" c'' 2  \fermata  
             r 4  
             a' 8  
             g' 8  
             \bar "|"  %{ end measure 8 %} 
             f' 4.  
             g' 8  
             a' 4  
             d'' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" c'' 4  
             \color "blue" bes' 4  \fermata  
             r 4  
             bes' 8  
             g' 8  
             \bar "|"  %{ end measure 10 %} 
             e' 4.  
             g' 8  
             c'' 4.  
             \color "blue" bes' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" bes' 4  
             \color "blue" a' 4  \fermata  
             r 4  
             a' 8  
             bes' 8  
             \bar "|"  %{ end measure 12 %} 
             c'' 4.  
             c'' 8  
             f'' 4.  
             \color "blue" e'' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "blue" e'' 4  
             \color "blue" d'' 4  \fermata  
             r 4  
             bes' 8  
             a' 8  
             \bar "|"  %{ end measure 14 %} 
             g' 4.  
             g' 8  
             c'' 4  
             bes' 8  
             g' 8  
             \bar "|"  %{ end measure 15 %} 
             f' 2  
             r 4  
             \bar "|."  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
              "rule_14" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_3" 
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
              "rule_3" 
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
              "rule_0" 
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Arm" 
              "en" 
              "ne" -- 
              "drig"__ 
              "is" 
              "mijn" 
              "hut" -- 
              "je,"__ 
              "Maar" 
              "de" 
              "rust" 
              "en" 
              "tee" -- 
              "der" -- 
              "heid"__ 
              "Woont" 
              "er" 
              "in;" 
              "bij" 
              "el" -- 
              "ken"__ 
              "voet" -- 
              "stap,"__ 
              "Tee" -- 
              "kent"__ 
              "zich" 
              "te" -- 
              "vre" -- 
              "den" -- 
              "heid."__ 
              "Blijft" 
              "de" 
              "lief" -- 
              "de"__ 
              "bij" 
              "ons" 
              " " 
              "wo" -- 
              "nen,"__ 
              "Die" 
              "ons" 
              "niet" 
              "dan" 
              "bloe" -- 
              "men"__ 
              "biedt," 
              " " 
              "Dan" 
              "be" -- 
              "nij"__ 
              "ik" 
              "zelfs" 
              "den" 
              "vor" -- 
              "sten"__ 
              "Hun" -- 
              "nen"__ 
              "troon" 
              "of" 
              "glo" -- 
              "rie"__ 
              " " 
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
