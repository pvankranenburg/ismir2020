\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB112489_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 4/4
             \key g \major 
             \key g \major 
             d' 4  
             g' 4  
             g' 4  
             g' 8  
             g' 8  
             \bar "|"  %{ end measure 1 %} 
             a' 4  
             a' 8  
             a' 8  
             a' 4.  
             g' 8  
             \bar "|"  %{ end measure 2 %} 
             fis' 4  
             d' 4  
             e' 4  
             \color "blue" fis' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" g' 2  
             \color "blue" g' 2  \fermata  
             \bar "|"  %{ end measure 4 %} 
             d' 4  
             g' 4  
             g' 4  
             g' 4  
             \bar "|"  %{ end measure 5 %} 
             a' 4  
             a' 4  
             a' 4.  
             g' 8  
             \bar "|"  %{ end measure 6 %} 
             fis' 4  
             d' 4  
             e' 4  
             fis' 8  
             \color "blue" fis' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" g' 2  
             \color "blue" g' 2  \fermata  
             \bar "|"  %{ end measure 8 %} 
             b' 4  
             \color "red" b' 8  
             \color "red" b' 8  
             \color "red" b' 2  
             \bar "|"  %{ end measure 9 %} 
             c'' 4  
             \color "red" c'' 8  
             \color "red" c'' 8  
             \color "red" c'' 2  
             \bar "|"  %{ end measure 10 %} 
             a' 4  
             a' 8  
             a' 8  
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 11 %} 
             g' 4  
             b' 4  
             g' 2  
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
               _  
               _  
               _  
               _  
               _  
              "rule_29" 
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
              "rule_0" 
               _  
               _  
               _  
              "rule_0" 
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Hee" -- 
              "ren"__ 
              "wil" 
              "je" 
              "mijn" 
              "bees" -- 
              "sie"__ 
              "eens" 
              "zien" 
              " " 
              "'t is" 
              "zoo'n" 
              "klein" 
              "mar" -- 
              "mot" -- 
              "je"__ 
              "Hij" 
              "kan" 
              "dan" -- 
              "sen"__ 
              "voor" 
              "de" 
              "lier" 
              " " 
              "Als" 
              "hij" 
              "komt" 
              "uit" 
              "zijn" 
              "kot" -- 
              "je"__ 
              "A" -- 
              "vik" -- 
              "ke" -- 
              "mooi"__ 
              "A" -- 
              "vik" -- 
              "ke" -- 
              "mooi"__ 
              "A" -- 
              "vik" -- 
              "ke" -- 
              "mooi"__ 
              "mar" -- 
              "mot" -- 
              " " 
              "je."__ 
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
