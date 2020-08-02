\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB139369_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 3/4
             \key ees \major 
             \key ees \major 
             ees'' 8  
             \bar "|"  %{ end measure 0 %} 
             \color "red" bes' 8  
             \color "red" c'' 8  
             \color "red" bes' 4.  
             g' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" aes' 8  
             \color "red" c'' 8  
             \color "red" f' 4.  \fermata  
             g' 8  
             \bar "|"  %{ end measure 2 %} 
             aes' 4.  
             f' 8  
             c' 8  
             \color "blue" d' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" ees' 4  
             \color "blue" ees' 4  \fermata  
             r 8  
             bes' 8  
             \bar "|"  %{ end measure 4 %} 
             \color "red" a' 8  
             \color "red" c'' 8  
             \color "red" f' 4.  
             ees'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" ees'' 8  
             \color "blue" d'' 8  
             \color "blue" bes' 4.  \fermata  
             bes' 8  
             \bar "|"  %{ end measure 6 %} 
             \color "red" bes' 8  
             \color "red" g' 8  
             \color "red" ees' 4.  
             des'' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "red" des'' 8  
             \color "red" c'' 8  
             \color "red" f'' 4.  \fermata  
             ees'' 8  
             \bar "|"  %{ end measure 8 %} 
             \color "red" d'' 8  
             \color "red" c'' 8  
             \color "red" bes' 4.  
             aes' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "red" g' 8  
             \color "red" aes' 8  
             \color "red" bes' 4  \fermata  
             ees' 4  
             \bar "|"  %{ end measure 10 %} 
             c'' 4.  
             f' 8  
             aes' 8  
             d' 8  
             \bar "|"  %{ end measure 11 %} 
             ees' 4  
             ees' 4  
             r 8  
             \bar "|."  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
              "rule_7" 
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
              "rule_9" 
               _  
               _  
               _  
              "rule_18" 
               _  
               _  
               _  
              "rule_5" 
               _  
               _  
               _  
              "rule_18" 
               _  
               _  
               _  
              "Miss" 
               _  
               _  
               _  
              "rule_18" 
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "De" 
              "bes" -- 
              "te"__ 
              "stuur" -- 
              "lui"__ 
              "staan" 
              "aan" 
              "wal," 
              "En" 
              "tu" -- 
              "ren"__ 
              "door" 
              "hun" 
              "vuis" -- 
              "ten;"__ 
              "Zij" 
              "we" -- 
              "ten"__ 
              "'t nÃ²g" 
              "zij" 
              "wis" -- 
              "ten"__ 
              "'t Ã l" 
              "Ze" 
              "zijn," 
              "van" 
              "en" -- 
              "kle"__ 
              "wijs" -- 
              "heid,"__ 
              "mal," 
              "Maar" 
              "roe" -- 
              "ren"__ 
              "vin" 
              "noch" 
              "knuis" -- 
              " " 
              "ten,"__ 
              "Maar" 
              "roe" -- 
              "ren"__ 
              "vin" 
              "noch" 
              "knuis" -- 
              "ten."__ 
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
