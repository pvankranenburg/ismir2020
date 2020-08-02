\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB075825_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*12 
             \clef "treble" 
             \time 4/4
             \key g \major 
             \key g \major 
             d'' 8  
             g' 8  
             b' 8  
             \bar "|"  %{ end measure 0 %} 
             d'' 8  
             d'' 8  
             \times 2/3 { d'' 8  
                \color "red" d'' 8  
                \color "red" e'' 8  
                 } 
                
             \color "red" d'' 8  \fermata  
             d'' 8  
             a' 8  
             b' 8  
             \bar "|"  %{ end measure 1 %} 
             c'' 8.  
             e'' 16  
             d'' 8  
             \color "red" c'' 8  
             \color "red" d'' 8  
             \color "red" g' 8  \fermata  
             g' 8  
             b' 8  
             \bar "|"  %{ end measure 2 %} 
             d'' 8  
             d'' 8  
             \color "red" d'' 8  
             \color "red" e'' 8  
             \color "red" d'' 4  \fermata  
             a' 8  
             b' 8  
             \bar "|"  %{ end measure 3 %} 
             c'' 8  
             c'' 8  
             \color "blue" b' 8  
             \color "blue" a' 8  
             \color "blue" g' 8.  \fermata  
             g' 16  
             \color "red" g' 8.  
             \color "red" b' 16  
             \bar "|"  %{ end measure 4 %} 
             \time 3/4
             \color "red" d'' 4  ~  
             \color "red" d'' 8.  
             d'' 16  
             e'' 8.  
             \color "blue" fis'' 16  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" g'' 8  
             \color "blue" g'' 8  ~  
             \color "blue" g'' 4  \fermata  
             g'' 8  
             \color "red" g'' 8  
             \bar "|"  %{ end measure 6 %} 
             \color "red" e'' 8  
             \color "red" e'' 4.  
             d'' 8  
             c'' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" b' 8  
             \color "blue" d'' 8  
             \color "blue" g' 8  \fermata  
             d'' 8  
             g' 8  
             b' 8  
             \bar "|"  %{ end measure 8 %} 
             \time 4/4
             d'' 8.  
             d'' 16  
             \color "red" d'' 8  
             \color "red" e'' 8  
             \color "red" d'' 8  \fermata  
             d'' 8  
             a' 8  
             b' 8  
             \bar "|"  %{ end measure 9 %} 
             c'' 8  
             e'' 8  
             \color "blue" d'' 8  
             \color "blue" c'' 8  
             \color "blue" b' 8  \fermata  
             d'' 8  
             g' 8  
             b' 8  
             \bar "|"  %{ end measure 10 %} 
             d'' 8.  
             d'' 16  
             \color "red" d'' 8  
             \color "red" e'' 8  
             \color "red" d'' 8  \fermata  
             d'' 8  
             a' 8  
             b' 8  
             \bar "|"  %{ end measure 11 %} 
             c'' 8  
             c'' 8  
             \color "red" b' 8  
             \color "red" a' 8  
             \color "red" g' 8  
             d'' 8  
             g' 16  
             g' 16  
             b' 8  
             \bar "|"  %{ end measure 12 %} 
             \times 2/3 { d'' 8  
                d'' 8  
                d'' 8  
                 } 
                
             \color "red" d'' 8  
             \color "red" e'' 8  
             \color "red" d'' 8  \fermata  
             d'' 8  
             a' 8  
             b' 8  
             \bar "|"  %{ end measure 13 %} 
             c'' 8  
             e'' 8  
             \color "red" d'' 8  
             \color "red" c'' 8  
             \color "red" b' 8  \fermata  
             d'' 8  
             g' 16  
             g' 16  
             b' 8  
             \bar "|"  %{ end measure 14 %} 
             \times 2/3 { d'' 8  
                d'' 8  
                d'' 8  
                 } 
                
             \color "red" d'' 8  
             \color "red" e'' 8  
             \color "red" d'' 8  \fermata  
             d'' 8  
             a' 8  
             b' 8  
             \bar "|"  %{ end measure 15 %} 
             c'' 8  
             c'' 8  
             b' 8  
             a' 8  
             g' 8  
             \bar "|."  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_30" 
               _  
               _  
               _  
              "rule_14" 
               _  
               _  
               _  
               _  
              "rule_12" 
               _  
               _  
               _  
              "rule_12" 
               _  
               _  
               _  
               _  
              "rule_27" 
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
              "rule_27" 
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
              "Miss" 
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
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Er" 
              "kwam" 
              "er" 
              "eens" 
              "een" 
              "e" -- 
              "de" -- 
              "le"__ 
              "heer" 
              "Die" 
              "bij" 
              "een" 
              "schooi" -- 
              "ster"__ 
              "kwam" 
              "ver" -- 
              "ke" -- 
              "ren"__ 
              "Hij" 
              "kwam" 
              "klop" -- 
              "pen"__ 
              "aan" 
              "de" 
              "deur" 
              "Sprak" 
              "er" 
              "met" 
              "een" 
              "droef" 
              "ge" -- 
              "treur:"__ 
              "Juf" -- 
              "frouw"__ 
              "'k kom" 
              "u" 
              "een" 
              "woord" -- 
              "je"__ 
              "vra" -- 
              "gen"__ 
              "Sta" 
              "ik" 
              "bij" 
              "u" 
              "in" 
              "be" -- 
              "ha" -- 
              " " 
              "gen?"__ 
              "Neen," 
              "gij" 
              "een" 
              "heer" 
              "zo" 
              "hoog" 
              "van" 
              "staat" 
              "Die" 
              "mij" 
              "zo" 
              "ver" 
              "te" 
              "bo" -- 
              "ven"__ 
              "gaat." 
              "Neen," 
              "gij" 
              "een" 
              "heer" 
              "zo" 
              "hoog" 
              "van" 
              "staat" 
              "Die" 
              "mij" 
              "zo" 
              "ver" 
              "te" 
              "bo" -- 
              "ven"__ 
              "gaat." 
              "Ik" 
              "zal" 
              "u" 
              "om" -- 
              "hang" -- 
              "en"__ 
              "met" 
              "di" -- 
              "a" -- 
              "mant"__ 
              "Gij" 
              "zijt" 
              "de" 
              "schoon" -- 
              "ste"__ 
              "van" 
              "het" 
              "land" 
              "Ik" 
              "zal" 
              "u" 
              "om" -- 
              "hang" -- 
              "en"__ 
              "met" 
              "di" -- 
              "a" -- 
              "mant"__ 
              "Gij" 
              "zijt" 
              "de" 
              "schoon" -- 
              "ste"__ 
              "van" 
              "het" 
              "land" 
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
