\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB140078_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 2/4
             \key f \major 
             \key f \major 
             f' 8  
             e' 8  
             f' 8  
             g' 8  
             \bar "|"  %{ end measure 1 %} 
             a' 4  
             a' 8  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             g' 4  
             g' 8  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" f' 4  
             \color "blue" c' 4  \fermata  
             \bar "|"  %{ end measure 4 %} 
             f' 8  
             e' 8  
             f' 8  
             g' 8  
             \bar "|"  %{ end measure 5 %} 
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 6 %} 
             g' 4  
             \color "blue" g' 8  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" f' 4.  \fermata  
             a' 8  
             \bar "|"  %{ end measure 8 %} 
             c'' 4  
             c'' 8  
             c'' 8  
             \bar "|"  %{ end measure 9 %} 
             d'' 4  
             c'' 4  
             \bar "|"  %{ end measure 10 %} 
             c'' 4  
             \color "red" bes' 8  
             \color "red" a' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "red" bes' 4  \fermata  
             g' 8  
             a' 8  
             \bar "|"  %{ end measure 12 %} 
             bes' 4  
             bes' 4  
             \bar "|"  %{ end measure 13 %} 
             c'' 4  
             bes' 4  
             \bar "|"  %{ end measure 14 %} 
             bes' 4  
             \color "blue" a' 8  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 15 %} 
             \color "blue" a' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 16 %} 
             \color "red" c'' 4.  
             \color "red" bes' 8  
             \bar "|"  %{ end measure 17 %} 
             \color "red" a' 4  
             r 4  
             \bar "|"  %{ end measure 18 %} 
             \color "blue" c'' 4.  
             \color "blue" bes' 8  
             \bar "|"  %{ end measure 19 %} 
             \color "blue" a' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 20 %} 
             \color "red" c'' 4.  
             \color "red" bes' 8  
             \bar "|"  %{ end measure 21 %} 
             \color "red" a' 4  
             r 4  
             \bar "|"  %{ end measure 22 %} 
             \color "blue" c'' 4.  
             \color "blue" bes' 8  
             \bar "|"  %{ end measure 23 %} 
             \color "blue" a' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 24 %} 
             \color "red" c'' 4.  
             \color "red" bes' 8  
             \bar "|"  %{ end measure 25 %} 
             \color "red" a' 4  
             r 4  
             \bar "|"  %{ end measure 26 %} 
             \color "blue" c'' 4.  
             \color "blue" bes' 8  
             \bar "|"  %{ end measure 27 %} 
             \color "blue" a' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 28 %} 
             c'' 4.  
             bes' 8  
             \bar "|"  %{ end measure 29 %} 
             a' 4  
             a' 4  
             \bar "|."  %{ end measure 30 %} 
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
              "rule_24" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_16" 
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
               _  
              "rule_1" 
               _  
               _  
              "rule_1" 
               _  
               _  
              "rule_1" 
               _  
               _  
              "rule_1" 
               _  
               _  
              "rule_1" 
               _  
               _  
              "rule_1" 
               _  
               _  
              "rule_1" 
               _  
               _  
               _  
               _  
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Heb" -- 
              "de"__ 
              "van" 
              "de" 
              "ze" -- 
              "ven,"__ 
              "de" 
              "ze" -- 
              "ven,"__ 
              "de" 
              "ze" -- 
              "ven,"__ 
              "Heb" -- 
              "de"__ 
              "van" 
              "de" 
              "ze" -- 
              "ven" -- 
              "sprong"__ 
              "niet" 
              "ge" -- 
              "hoord?"__ 
              "Ze" 
              "zeg" -- 
              "gen"__ 
              "dat" 
              "ik" 
              "niet" 
              "dan" -- 
              "sen"__ 
              "en" 
              "kan," 
              "ik" 
              "kan" 
              "dan" -- 
              "sen"__ 
              "als" 
              "een" 
              "e" -- 
              "del" -- 
              " " 
              "man,"__ 
              "Dat" 
              "is" 
              "Ã©Ã©n," 
              "dat" 
              "is" 
              "twee," 
              "dat" 
              "is" 
              "drie!" 
              "Dat" 
              "is" 
              "vier," 
              "dat" 
              "is" 
              "vijf," 
              "dat" 
              "is" 
              "zes," 
              "Dat" 
              "is" 
              "ze" -- 
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
