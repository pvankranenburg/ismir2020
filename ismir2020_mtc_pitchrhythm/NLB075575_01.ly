\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB075575_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 6/8
             \key g \major 
             \key g \major 
             d' 8  
             \bar "|"  %{ end measure 0 %} 
             g' 8  
             g' 8  
             g' 8  
             g' 8  
             fis' 8  
             e' 8  
             \bar "|"  %{ end measure 1 %} 
             fis' 8  
             \color "blue" fis' 8  
             \color "blue" fis' 8  
             \color "blue" fis' 4  \fermata  
             fis' 8  
             \bar "|"  %{ end measure 2 %} 
             e' 4  
             e' 8  
             g' 8  
             fis' 8  
             e' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "red" e' 4  
             \color "red" d' 8  
             \color "red" d' 8  \fermata  
             e' 8  
             fis' 8  
             \bar "|"  %{ end measure 4 %} 
             g' 4  
             d' 8  
             \color "blue" c' 4  
             \color "blue" b 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" a 4.  ~  
             \color "blue" a 4  \fermata  
             a' 8  
             \bar "|"  %{ end measure 6 %} 
             a' 4  
             g' 8  
             \color "blue" fis' 4  
             \color "blue" e' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" d' 4.  ~  
             \color "blue" d' 4  \fermata  
             d' 8  
             \bar "|"  %{ end measure 8 %} 
             b' 4  
             g' 8  
             d' 8  
             \color "blue" d' 8  
             \color "blue" e' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" e' 4.  ~  
             \color "blue" e' 4  \fermata  
             g' 8  
             \bar "|"  %{ end measure 10 %} 
             fis' 4  
             fis' 8  
             fis' 8  
             e' 8  
             fis' 8  
             \bar "|"  %{ end measure 11 %} 
             g' 4.  ~  
             g' 4  
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
               _  
              "rule_22" 
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
              "rule_0" 
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "De" 
              "we" -- 
              "ver"__ 
              "dat" 
              "is" 
              "e" -- 
              "ne"__ 
              "aar" -- 
              "di" -- 
              "ge"__ 
              "kloot" 
              "Hij" 
              "schoot" 
              "zien" 
              "vrouw" 
              "met" 
              "de" 
              "schiet" -- 
              "spoel"__ 
              "dood" 
              "Tra" -- 
              "la" -- 
              "la" -- 
              "la" -- 
              "la" -- 
              "la" -- 
              "la"__ 
              "La" -- 
              "la" -- 
              "la" -- 
              "la" -- 
              "la" -- 
              "la" -- 
              "Wat" 
              "helpt" 
              "nu" 
              "mij" -- 
              "ne"__ 
              "droef" -- 
              "heid"__ 
              "Zij" 
              "is" 
              "haar" 
              "le" -- 
              " " 
              "ven"__ 
              "kwijt" 
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
