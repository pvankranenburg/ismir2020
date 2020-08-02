\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB074525_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*12 
             \clef "treble" 
             \time 4/4
             \key g \major 
             \key g \major 
             d' 8  
             g' 8  
             b' 8  
             \bar "|"  %{ end measure 0 %} 
             g' 4.  
             g' 8  
             fis' 8  
             a' 8  
             g' 8.  
             \color "blue" e' 16  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" e' 4  
             \color "blue" d' 4  \fermata  
             r 8  
             d' 8  
             fis' 8  
             e' 8  
             \bar "|"  %{ end measure 2 %} 
             d' 4  
             d' 4  
             fis' 8  
             a' 8  
             \color "blue" c'' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" g' 2  \fermata  
             r 8  
             d' 8  
             g' 8  
             b' 8  
             \bar "|"  %{ end measure 4 %} 
             g' 4.  
             g' 8  
             fis' 8  
             a' 8  
             g' 8.  
             \color "blue" e' 16  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" e' 4  
             \color "blue" d' 4  \fermata  
             r 8  
             d' 8  
             fis' 8  
             e' 8  
             \bar "|"  %{ end measure 6 %} 
             d' 4  
             d' 8.  
             d' 16  
             fis' 8  
             a' 8  
             \color "blue" c'' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" g' 2  \fermata  
             r 8  
             e' 8  
             e' 8  
             g' 8  
             \bar "|"  %{ end measure 8 %} 
             fis' 4.  
             fis' 8  
             a' 8  
             a' 8  
             e' 8  
             \color "blue" d' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" g' 4  
             \color "blue" g' 4  \fermata  
             r 8  
             b' 8  
             b' 8  
             a' 8  
             \bar "|"  %{ end measure 10 %} 
             b' 4  
             r 8  
             b' 8  
             c'' 8  
             b' 8  
             \color "blue" g' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" a' 2  \fermata  
             r 8  
             d' 8  
             e' 8  
             fis' 8  
             \bar "|"  %{ end measure 12 %} 
             g' 4  
             b' 8.  
             b' 16  
             g' 8  
             g' 8  
             a' 8  
             c'' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "blue" b' 8  
             \color "blue" a' 8  
             \color "blue" e' 4  \fermata  
             r 8  
             g' 8  
             fis' 8  
             e' 8  
             \bar "|"  %{ end measure 14 %} 
             \time 6/4
             d' 4  
             d' 4  
             b' 4  
             a' 4  
             e' 4  
             fis' 8  
             fis' 8  
             \bar "|"  %{ end measure 15 %} 
             \time 4/4
             g' 2  
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Hoe" 
              "kan" 
              "er" 
              "soms" 
              "toch" 
              "een" 
              "braaf" 
              "hart" -- 
              "je"__ 
              "lij" -- 
              "den,"__ 
              "Hoe" 
              "won" -- 
              "der"__ 
              "is" 
              "God" 
              "toch" 
              "in" 
              "zijn" 
              "be" -- 
              "stuur."__ 
              "Zo" 
              "als" 
              "de" 
              "zaak" 
              "dat" 
              "wij" 
              "hier" 
              "gaan" 
              "ver" -- 
              "kla" -- 
              "ren,"__ 
              "On" -- 
              "langs"__ 
              "ge" -- 
              "schied"__ 
              "bij" 
              "de" 
              "Fran" -- 
              "se"__ 
              "ka" -- 
              "ros" -- 
              "siers."__ 
              "Os" -- 
              "car"__ 
              "een" 
              "bra" -- 
              "ve"__ 
              "koop" -- 
              "mans"__ 
              "zoon" 
              "ge" -- 
              "he" -- 
              "ten,"__ 
              "Viel" 
              "in" 
              "het" 
              "lot" 
              "en" 
              "moest" 
              "wor" -- 
              "den"__ 
              "sol" -- 
              "daat."__ 
              "Had" 
              "maar" 
              "Ã©Ã©n" 
              "broe" -- 
              "der"__ 
              "die" 
              "voor" 
              "prie" -- 
              "ster"__ 
              "stu" -- 
              "deer" -- 
              " " 
              "de."__ 
              "Bleef" 
              "gans" 
              "al" -- 
              "leen"__ 
              "met" 
              "zij" -- 
              "ne"__ 
              "moe" -- 
              "der"__ 
              "op" 
              "aard." 
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
