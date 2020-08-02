\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB127126_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 3/4
             \key f \major 
             \key f \major 
             c' 8  
             \bar "|"  %{ end measure 0 %} 
             f' 8.  
             a' 16  
             c'' 4.  
             d'' 8  
             \bar "|"  %{ end measure 1 %} 
             \times 2/3 { d'' 8  
                \color "blue" c'' 8  
                \color "blue" a' 8  
                 } 
                
             \color "blue" f' 4.  \fermata  
             f' 8  
             \bar "|"  %{ end measure 2 %} 
             g' 4.  
             a' 8  
             bes' 8  
             \color "blue" e' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" g' 4  
             \color "blue" f' 8  \fermata  
             r 8  
             r 8  
             c' 8  
             \bar "|"  %{ end measure 4 %} 
             f' 8.  
             a' 16  
             c'' 4.  
             d'' 8  
             \bar "|"  %{ end measure 5 %} 
             \times 2/3 { d'' 8  
                \color "blue" c'' 8  
                \color "blue" a' 8  
                 } 
                
             \color "blue" f' 4.  \fermata  
             f' 8  
             \bar "|"  %{ end measure 6 %} 
             g' 4.  
             a' 8  
             bes' 8  
             \color "blue" e' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" g' 4  
             \color "blue" f' 8  \fermata  
             r 8  
             r 8  
             f' 8  
             \bar "|"  %{ end measure 8 %} 
             g' 8  
             a' 8  
             g' 4.  
             f' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" c'' 8.  
             \color "blue" d'' 16  
             \color "blue" c'' 4.  \fermata  
             f' 8  
             \bar "|"  %{ end measure 10 %} 
             g' 8  
             a' 8  
             g' 4.  
             f' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" c'' 8.  
             \color "blue" d'' 16  
             \color "blue" c'' 4  \fermata  
             r 8  
             f'' 8  
             \bar "|"  %{ end measure 12 %} 
             \times 2/3 { e'' 8  
                \color "red" f'' 8  
                \color "red" d'' 8  
                 } 
                
             \color "red" c'' 4.  
             a' 8  
             \bar "|"  %{ end measure 13 %} 
             \times 2/3 { bes' 8  
                \color "blue" c'' 8  
                \color "blue" d'' 8  
                 } 
                
             \color "blue" c'' 4.  \fermata  
             f' 8  
             \bar "|"  %{ end measure 14 %} 
             g' 8  
             a' 8  
             bes' 4  
             d'' 4  
             \bar "|"  %{ end measure 15 %} 
             c'' 8.  
             e' 16  
             f' 4  
             r 8  
             \bar "|."  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_7" 
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
              "rule_5" 
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
               _  
              "rule_13" 
               _  
               _  
               _  
               _  
              "rule_11" 
               _  
               _  
               _  
               _  
              "rule_8" 
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
              "De" 
              "ka" -- 
              "bels"__ 
              "los," 
              "de" 
              "zei" -- 
              " " 
              "len"__ 
              "op," 
              "Dat" 
              "gaat" 
              "er" 
              "op" 
              "een" 
              "va" -- 
              "ren;"__ 
              "Al" 
              "wa" -- 
              "ren"__ 
              "wij" 
              "Sin" -- 
              "jeurs"__ 
              " " 
              "aan" 
              "wal," 
              "Ons" 
              "hart" 
              "leÃ®" 
              "in" 
              "de" 
              "ba" -- 
              "ren:"__ 
              "Een" 
              "Hol" -- 
              "landsch"__ 
              "kind," 
              "dat" 
              "is" 
              "be" -- 
              "kend,"__ 
              "Die" 
              "vindt" 
              "in" 
              "Zee" 
              "zijn" 
              "e" -- 
              "le" -- 
              "ment,"__ 
              "jo" -- 
              "ho,"__ 
              " " 
              "jo" -- 
              "ho,"__ 
              "jo" -- 
              "ho,"__ 
              " " 
              "jo" -- 
              "ho!"__ 
              "Die" 
              "vindt" 
              "in" 
              "Zee" 
              "zijn" 
              "e" -- 
              "le" -- 
              "ment!"__ 
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
