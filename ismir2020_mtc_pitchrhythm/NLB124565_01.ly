\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB124565_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \clef "treble" 
             \time 4/4
             \key g \major 
             \key g \major 
             d' 4  
             \bar "|"  %{ end measure 0 %} 
             g' 8  
             g' 8  
             g' 8.  
             a' 8  
             g' 16  
             g' 4  
             \color "blue" a' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" b' 4.  
             \color "blue" a' 8  
             g' 4  \fermata  
             g' 8.  
             b' 16  
             \bar "|"  %{ end measure 2 %} 
             d'' 4.  
             \color "blue" d'' 8  
             \color "blue" c'' 4.  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 3 %} 
             b' 2  \fermata  
             r 4  
             b' 4  
             \bar "|"  %{ end measure 4 %} 
             b' 4  
             b' 4  
             b' 8  
             \color "red" a' 8  
             \color "blue" g' 8.  
             \color "blue" fis' 16  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" e' 2  
             e' 4  \fermata  
             fis' 8.  
             g' 16  
             \bar "|"  %{ end measure 6 %} 
             a' 4  
             a' 4  
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 7 %} 
             d'' 8  
             \color "red" cis'' 8  
             \color "red" d'' 8  
             \color "red" e'' 8  
             d'' 4  \fermata  
             a' 4  
             \bar "|"  %{ end measure 8 %} 
             b' 4  
             a' 4  
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 9 %} 
             b' 8  
             \color "blue" a' 8  
             \color "blue" b' 8  
             \color "blue" c'' 8  
             d'' 4  \fermata  
             g' 8.  
             b' 16  
             \bar "|"  %{ end measure 10 %} 
             d'' 4  
             c'' 8  
             b' 8  
             a' 4.  
             g' 8  
             \bar "|"  %{ end measure 11 %} 
             g' 2  
             r 4  
             \bar "|."  %{ end measure 12 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_3" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_14" 
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
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Ach!" 
              "dat" 
              "ik" 
              "in" 
              " " 
              "den" 
              "he" -- 
              "mel"__ 
              "wa" -- 
              " " 
              "re"__ 
              "al" 
              " " 
              "bij" 
              "mijn" 
              "zoe" -- 
              "te"__ 
              "lief." 
              "Hoe" 
              "blij" -- 
              "de"__ 
              "zou" 
              " " 
              "ik" 
              " " 
              "zin" -- 
              "gen"__ 
              "van" 
              " " 
              "Je" -- 
              "sus,"__ 
              "mij" -- 
              "ne"__ 
              "min" -- 
              "ne,"__ 
              "min" -- 
              "ne,"__ 
              "min," 
              "van" 
              "Je" -- 
              "sus"__ 
              "mij" -- 
              "ne"__ 
              "min" -- 
              "ne,"__ 
              "min" -- 
              "ne,"__ 
              "min" 
              "en" 
              "mijn" 
              "brui" -- 
              "de" -- 
              "gom"__ 
              "is" 
              "er" -- 
              "in."__ 
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
