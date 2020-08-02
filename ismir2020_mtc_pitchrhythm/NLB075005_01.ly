\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB075005_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 6/8
             \key g \major 
             \key g \major 
             d' 8  
             g' 8  
             a' 8  
             b' 4  
             a' 8  
             \bar "|"  %{ end measure 1 %} 
             g' 8  
             b' 8  
             \color "blue" g' 8  
             \color "red" e' 4  
             \color "red" d' 8  \fermata  
             \bar "|"  %{ end measure 2 %} 
             \time 3/8
             r 4  
             \color "red" d' 8  
             \bar "|"  %{ end measure 3 %} 
             \time 6/8
             b' 4  
             b' 8  
             c'' 4  
             b' 8  
             \bar "|"  %{ end measure 4 %} 
             a' 8.  
             \color "blue" g' 16  
             \color "blue" fis' 8  
             \color "blue" g' 4.  \fermata  
             \bar "|"  %{ end measure 5 %} 
             g' 8  
             a' 8  
             b' 8  
             c'' 4  
             c'' 8  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" b' 4  
             \color "blue" b' 8  
             \color "blue" a' 4.  \fermata  
             \bar "|"  %{ end measure 7 %} 
             c'' 8  
             b' 8  
             g' 8  
             d' 8  
             c'' 8  
             b' 8  
             \bar "|"  %{ end measure 8 %} 
             a' 8.  
             g' 16  
             fis' 8  
             g' 4.  
             \bar "|."  %{ end measure 9 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_0" 
              "rule_24" 
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
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Daar" 
              "was" 
              "een" 
              "vrouw" 
              "zeer" 
              "jong" 
              " " 
              "van" 
              "ja" -- 
              "ren"__ 
              "Die" 
              "leef" -- 
              "de"__ 
              "met" 
              "haar" 
              "man" 
              " " 
              "in" 
              "deugd" 
              "Hij" 
              "werd" 
              "ge" -- 
              "rukt"__ 
              "al" 
              "van" 
              "haar" 
              "zij" 
              "Al" 
              "door" 
              "de" 
              "Fran" -- 
              " " 
              "se"__ 
              "dwin" -- 
              "ge" -- 
              "lan" -- 
              "dij"__ 
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
