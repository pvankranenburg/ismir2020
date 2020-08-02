\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB133423_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 3/4
             \key g \major 
             \key g \major 
             d' 8.  
             g' 16  
             g' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             b' 8.  
             g' 16  
             c'' 8.  
             b' 16  
             \color "blue" b' 8.  
             \color "blue" a' 16  
             \bar "|"  %{ end measure 2 %} 
             \color "blue" g' 2  \fermata  
             r 4  
             \bar "|"  %{ end measure 3 %} 
             b' 8.  
             \color "red" c'' 16  
             \color "red" a' 4  
             \color "red" b' 4  
             \bar "|"  %{ end measure 4 %} 
             e' 8.  
             fis' 16  
             g' 8.  
             a' 16  
             \times 2/3 { a' 8  
                \color "blue" g' 8  
                \color "blue" fis' 8  
                 } 
                
             \bar "|"  %{ end measure 5 %} 
             \color "blue" g' 2  \fermata  
             r 4  
             \bar "|"  %{ end measure 6 %} 
             g' 8.  
             a' 16  
             b' 4  
             g' 4  
             \bar "|"  %{ end measure 7 %} 
             b' 8.  
             c'' 16  
             d'' 8.  
             c'' 16  
             \color "blue" b' 8.  
             \color "blue" c'' 16  
             \bar "|"  %{ end measure 8 %} 
             \color "blue" d'' 2  \fermata  
             r 4  
             \bar "|"  %{ end measure 9 %} 
             b' 8.  
             d'' 16  
             \color "red" c'' 8.  
             \color "red" b' 16  
             \color "red" a' 4  
             \bar "|"  %{ end measure 10 %} 
             b' 8.  
             g' 16  
             c'' 8.  
             b' 16  
             \color "blue" b' 8.  
             \color "blue" a' 16  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" g' 2  \fermata  
             r 4  
             \bar "|"  %{ end measure 12 %} 
             c'' 8.  
             b' 16  
             a' 8.  
             b' 16  
             g' 8.  
             a' 16  
             \bar "|"  %{ end measure 13 %} 
             \color "blue" fis' 8.  
             \color "blue" e' 16  
             \color "blue" d' 2  \fermata  
             \bar "|"  %{ end measure 14 %} 
             g' 8.  
             a' 16  
             b' 8.  
             c'' 16  
             \times 2/3 { c'' 8  
                \color "blue" b' 8  
                \color "blue" c'' 8  
                 } 
                
             \bar "|"  %{ end measure 15 %} 
             \color "blue" b' 8  
             a' 4  \fermata  
             r 4  
             b' 8.  
             c'' 16  
             \bar "|"  %{ end measure 16 %} 
             d'' 4  
             b' 4  
             c'' 8.  
             \color "blue" d'' 16  
             \bar "|"  %{ end measure 17 %} 
             \color "blue" c'' 8  
             \color "blue" b' 8  
             a' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 18 %} 
             g' 8.  
             g' 16  
             c'' 8.  
             b' 16  
             b' 8.  
             a' 16  
             \bar "|"  %{ end measure 19 %} 
             g' 2  
             r 4  
             \bar "|."  %{ end measure 20 %} 
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
              "rule_1" 
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
              "rule_1" 
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
              "rule_14" 
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
               _  
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Gul" -- 
              "de"__ 
              "ty" -- 
              "den!"__ 
              "als" 
              "men" 
              "de" 
              "ge" -- 
              "meen" -- 
              "ten"__ 
              "zag" 
              "sich" 
              "ver" -- 
              "bly" -- 
              "den"__ 
              "op" 
              "den" 
              "sin" -- 
              "te"__ 
              "Mar" -- 
              " " 
              "tens"__ 
              "dag," 
              "als" 
              "de" 
              "kin" -- 
              "ders"__ 
              "al" -- 
              "le"__ 
              "soort" 
              "van" 
              "lek" -- 
              "ker" -- 
              "nien,"__ 
              "geld" 
              "en" 
              "spy" -- 
              "ze"__ 
              "voor" 
              "de" 
              " " 
              "sie" -- 
              "ke"__ 
              "en" 
              "arm'" 
              "lien." 
              "Wierd" 
              " " 
              "op" 
              "den" 
              "dag" 
              "van" 
              "he" -- 
              " " 
              "den"__ 
              "aen" 
              "een" 
              "ie" -- 
              "der"__ 
              "toe" -- 
              " " 
              "be" -- 
              " " 
              "reyd,"__ 
              "als" 
              "ge" -- 
              "schen" -- 
              "ken"__ 
              "ter" 
              "ge" -- 
              "den" -- 
              " " 
              "ken"__ 
              "van" 
              "Mar" -- 
              "ti" -- 
              "nus"__ 
              "mild" -- 
              "saem" -- 
              "heyd."__ 
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
