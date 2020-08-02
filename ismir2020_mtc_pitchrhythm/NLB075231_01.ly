\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB075231_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 6/8
             \key g \major 
             \key g \major 
             d' 8  
             \bar "|"  %{ end measure 0 %} 
             b' 4  
             b' 8  
             b' 4  
             b' 8  
             \bar "|"  %{ end measure 1 %} 
             b' 8  
             \color "blue" a' 8  
             \color "blue" b' 8  
             \color "blue" g' 4  \fermata  
             g' 8  
             \bar "|"  %{ end measure 2 %} 
             g' 8  
             a' 8  
             b' 8  
             d'' 8  
             \color "blue" c'' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 4.  ~  
             \color "blue" a' 4  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 4 %} 
             g'' 4  
             b' 8  
             b' 4  
             b' 8  
             \bar "|"  %{ end measure 5 %} 
             b' 8  
             \color "blue" a' 8  
             \color "blue" b' 8  
             \color "blue" g' 4  \fermata  
             g' 16  
             g' 16  
             \bar "|"  %{ end measure 6 %} 
             g' 8  
             a' 8  
             b' 8  
             d'' 8  
             \color "blue" c'' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" a' 4.  ~  
             \color "blue" a' 4  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 8 %} 
             d'' 4  
             e'' 8  
             \color "blue" d'' 4  
             \color "blue" e'' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" d'' 4.  ~  
             \color "blue" d'' 8.  \fermata  
             d'' 16  
             d'' 16  
             d'' 16  
             \bar "|"  %{ end measure 10 %} 
             e'' 4  
             fis'' 8  
             g'' 8  
             \color "red" fis'' 8  
             \color "red" e'' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "red" d'' 4.  \fermata  
             b' 8  
             b' 8  
             d'' 8  
             \bar "|"  %{ end measure 12 %} 
             d'' 8  
             c'' 4  
             c'' 8  
             c'' 8  
             \color "blue" e'' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "blue" e'' 8  
             \color "blue" d'' 4  ~  
             \color "blue" d'' 4  \fermata  
             g' 8  
             \bar "|"  %{ end measure 14 %} 
             g' 8  
             b' 8  
             d'' 8  
             g'' 8  
             fis'' 8  
             e'' 8  
             \bar "|"  %{ end measure 15 %} 
             d'' 8  
             \color "blue" c'' 8  
             \color "blue" a' 8  
             \color "blue" b' 4.  ~  
             \bar "|"  %{ end measure 16 %} 
             \color "blue" b' 4.  \fermata  
             b' 8  
             b' 8  
             d'' 8  
             \bar "|"  %{ end measure 17 %} 
             d'' 8  
             c'' 4  
             c'' 8  
             c'' 8  
             \color "blue" e'' 8  
             \bar "|"  %{ end measure 18 %} 
             \color "blue" e'' 8  
             \color "blue" d'' 4  ~  
             \color "blue" d'' 4  \fermata  
             g' 8  
             \bar "|"  %{ end measure 19 %} 
             g' 8  
             b' 8  
             d'' 8  
             g'' 8  
             fis'' 8  
             e'' 8  
             \bar "|"  %{ end measure 20 %} 
             d'' 8  
             c'' 8  
             a' 8  
             g' 4.  ~  
             \bar "|"  %{ end measure 21 %} 
             g' 4.  ~  
             g' 4  
             \bar "|."  %{ end measure 22 %} 
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
              "rule_5" 
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
              "rule_16" 
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
              "Ik" 
              "ben" 
              "laatst" -- 
              "maal"__ 
              "op" 
              "e" -- 
              " " 
              "nen"__ 
              "keer" 
              "Naar" 
              "mijn" 
              " " 
              "schoon" -- 
              "lief"__ 
              " " 
              "ge" -- 
              "gaan."__ 
              "Ik" 
              "deed" 
              "bij" 
              "haar" 
              "mijn" 
              "klach" -- 
              " " 
              "ten"__ 
              "teer" 
              "maar" 
              "ik" 
              "vond" 
              " " 
              "geen" 
              "troost" 
              " " 
              "bij" 
              "haar." 
              "Of" 
              "ik" 
              "schoon" 
              "praatt'" 
              "of" 
              "niet" 
              "Of" 
              "dat" 
              "ik" 
              "klaag" 
              "al" 
              "mijn" 
              " " 
              "ver" -- 
              "driet."__ 
              "Hoe" 
              "kan" 
              "het" 
              "zijn" 
              " " 
              "hoe" 
              "kan" 
              "het" 
              "zijn" 
              " " 
              "Schoon" -- 
              "lief"__ 
              " " 
              "dat" 
              "gij" 
              "er" 
              "mij" 
              "laat" 
              " " 
              "in" 
              "pijn." 
              "Hoe" 
              "kan" 
              "het" 
              "zijn" 
              " " 
              "hoe" 
              "kan" 
              "het" 
              "zijn" 
              " " 
              "Schoon" -- 
              "lief"__ 
              " " 
              "dat" 
              "gij" 
              "er" 
              "mij" 
              "laat" 
              " " 
              "in" 
              "pijn." 
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
