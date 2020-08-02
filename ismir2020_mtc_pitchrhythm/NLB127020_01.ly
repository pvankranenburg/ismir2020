\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB127020_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 3/4
             \key g \major 
             \key g \major 
             b' 16  
             c'' 16  
             \bar "|"  %{ end measure 0 %} 
             d'' 8  
             g' 8  
             g' 8  
             g' 8  
             g' 8  
             \color "red" a' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" g' 4  
             \color "red" fis' 8  \fermata  
             fis' 8  
             fis' 8  
             g' 8  
             \bar "|"  %{ end measure 2 %} 
             a' 4.  
             b' 8  
             \color "blue" c'' 8  
             \color "blue" d'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" b' 2  \fermata  
             r 8  
             b' 16  
             c'' 16  
             \bar "|"  %{ end measure 4 %} 
             d'' 8  
             g' 8  
             g' 8  
             g' 8  
             g' 8  
             \color "red" a' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" g' 4  
             \color "red" fis' 8  \fermata  
             fis' 8  
             g' 8  
             a' 8  
             \bar "|"  %{ end measure 6 %} 
             b' 8.  
             g' 16  
             \color "red" fis' 4  
             \color "red" e' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "red" d' 4  \fermata  
             r 8  
             d' 8  
             fis' 8  
             g' 8  
             \bar "|"  %{ end measure 8 %} 
             a' 8.  
             a' 16  
             a' 4  
             \color "red" gis' 4  
             \bar "|"  %{ end measure 9 %} 
             \color "red" b' 4  
             \color "red" a' 8  \fermata  
             d' 8  
             fis' 8  
             g' 8  
             \bar "|"  %{ end measure 10 %} 
             a' 8.  
             a' 16  
             \color "blue" a' 4  
             \color "blue" gis' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" a' 2  \fermata  
             r 8  
             b' 16  
             c'' 16  
             \bar "|"  %{ end measure 12 %} 
             d'' 8  
             g' 8  
             g' 8  
             g' 8  
             g' 8  
             \color "red" gis' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "red" a' 4  
             \color "red" e' 8  \fermata  
             c'' 8  
             b' 8  
             a' 8  
             \bar "|"  %{ end measure 14 %} 
             g' 8.  
             g' 16  
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 15 %} 
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
              "Miss" 
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
              "Miss" 
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
              "De" 
              " " 
              "vrij" -- 
              "heid"__ 
              "was" 
              "mijn" 
              "grootst" 
              "ge" -- 
              "noe" -- 
              "gen,"__ 
              "Zij" 
              "was" 
              "mij" 
              "meer" 
              "dan" 
              "schat" -- 
              "ten"__ 
              "waard;" 
              "Mij" 
              " " 
              "naar" 
              "eens" 
              "an" -- 
              "ders"__ 
              "wil" 
              "te" 
              "voe" -- 
              "gen"__ 
              "Steeds" 
              "al" -- 
              "toos"__ 
              "met" 
              "mijn" 
              "woes" -- 
              "ten"__ 
              "aard." 
              "Niets" 
              "kon" 
              "mij" 
              "aan" 
              "een" 
              "plaats" 
              "ver" -- 
              "bin" -- 
              "den,"__ 
              "Ik" 
              "ging" 
              "dan" 
              "hier," 
              "dan" 
              "der" -- 
              "waarts"__ 
              "heen." 
              "Maar" 
              " " 
              "nooit" 
              "kon" 
              "ik 't" 
              "ge" -- 
              "noe" -- 
              "gen"__ 
              "vin" -- 
              "den,"__ 
              "Want" 
              "al" -- 
              "toos"__ 
              "was" 
              "ik" 
              "maar" 
              "al" -- 
              "leen."__ 
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
