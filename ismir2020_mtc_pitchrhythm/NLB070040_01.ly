\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB070040_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 4/4
             \key g \major 
             \key g \major 
             d'' 8  
             \bar "|"  %{ end measure 0 %} 
             d'' 4  
             d'' 8  
             e'' 8  
             d'' 4  
             b' 8  
             a' 8  
             \bar "|"  %{ end measure 1 %} 
             g' 4  
             \color "red" g' 8.  
             \color "red" g' 16  
             \color "red" g' 4  \fermata  
             a' 8  
             a' 8  
             \bar "|"  %{ end measure 2 %} 
             b' 4  
             c'' 4  
             d'' 4  
             \color "blue" e'' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" d'' 2  
             \color "blue" b' 4  \fermata  
             r 8  
             d'' 8  
             \bar "|"  %{ end measure 4 %} 
             d'' 4  
             d'' 8  
             e'' 8  
             d'' 4  
             b' 8  
             a' 8  
             \bar "|"  %{ end measure 5 %} 
             g' 4  
             \color "red" g' 8.  
             \color "red" g' 16  
             \color "red" g' 4  \fermata  
             a' 8  
             a' 8  
             \bar "|"  %{ end measure 6 %} 
             b' 4  
             c'' 4  
             d'' 4  
             \color "blue" e'' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" d'' 2  
             \color "blue" b' 4  \fermata  
             r 8  
             b' 8  
             \bar "|"  %{ end measure 8 %} 
             a' 4  
             a' 8  
             b' 8  
             a' 4  
             b' 8  
             a' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "red" g' 4  
             \color "red" a' 4  
             \color "red" b' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 10 %} 
             a' 4  
             a' 8  
             b' 8  
             a' 4  
             b' 8  
             a' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "red" g' 4  
             \color "red" a' 4  
             \color "red" b' 8.  \fermata  
             d' 16  
             g' 8.  
             b' 16  
             \bar "|"  %{ end measure 12 %} 
             d'' 4  
             g'' 8.  
             e'' 16  
             d'' 8.  
             c'' 16  
             b' 8  
             \color "red" g' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "red" a' 2  
             \color "red" g' 8.  \fermata  
             a' 16  
             b' 8.  
             c'' 16  
             \bar "|"  %{ end measure 14 %} 
             d'' 4  
             g'' 8.  
             e'' 16  
             d'' 8.  
             c'' 16  
             b' 8  
             g' 8  
             \bar "|"  %{ end measure 15 %} 
             a' 2  
             g' 4  
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
              "Miss" 
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
              "rule_10" 
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
               _  
               _  
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Een" 
              "boer" 
              "en" 
              "een" 
              "boer" 
              "en" 
              "een" 
              "e" -- 
              "de" -- 
              "le"__ 
              "boer" 
              "en" 
              "een" 
              "boer" 
              "al" 
              "uit" 
              "de" 
              "lan" -- 
              "den"__ 
              "Een" 
              "boer" 
              "en" 
              "een" 
              "boer" 
              "en" 
              "een" 
              "e" -- 
              "de" -- 
              "le"__ 
              "boer" 
              "en" 
              "een" 
              "boer" 
              "al" 
              "uit" 
              "de" 
              "lan" -- 
              "den"__ 
              "Die" 
              "had" 
              "er" 
              "zijn" 
              "wa" -- 
              "gen"__ 
              "met" 
              "hout" 
              "be" -- 
              "laan"__ 
              "Die" 
              "hij" 
              "zou" 
              "uit" -- 
              " " 
              "ver" -- 
              "ko" -- 
              "pen"__ 
              "gaan" 
              "En" 
              "op" 
              "de" 
              "mar" -- 
              "rekt"__ 
              "daar" 
              "kwam" 
              "er" 
              "hij" 
              "te" 
              "lan" -- 
              "de"__ 
              "En" 
              "op" 
              "de" 
              "mar" -- 
              "rekt"__ 
              "daar" 
              "kwam" 
              "er" 
              "hij" 
              "te" 
              "lan" -- 
              "de."__ 
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
