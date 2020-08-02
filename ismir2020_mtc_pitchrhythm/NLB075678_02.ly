\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB075678_02"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 2/4
             \key g \major 
             \key g \major 
             d' 8  
             g' 8  
             g' 8  
             g' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" fis' 8  
             \color "blue" g' 8  
             \color "blue" a' 4  \fermata  
             \bar "|"  %{ end measure 2 %} 
             a' 8.  
             a' 16  
             a' 8  
             a' 16  
             a' 16  
             \bar "|"  %{ end measure 3 %} 
             \color "red" g' 8  
             \color "red" a' 8  
             \color "red" b' 8.  \fermata  
             d' 16  
             \bar "|"  %{ end measure 4 %} 
             d' 8  
             b' 8  
             b' 8  
             d' 16  
             d' 16  
             \bar "|"  %{ end measure 5 %} 
             \color "red" d' 8  
             \color "red" b' 8  
             \color "red" b' 4  \fermata  
             \bar "||"  %{ end measure 6 %} 
             \color "red" c'' 4.  
             b' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "red" b' 4  
             \color "red" a' 4  
             \bar "|"  %{ end measure 8 %} 
             \color "red" b' 4.  
             \color "red" a' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "red" a' 4  
             \color "red" g' 4  \fermata  
             \bar "|"  %{ end measure 10 %} 
             \color "red" a' 4.  
             g' 8  
             \bar "|"  %{ end measure 11 %} 
             g' 4  
             fis' 4  
             \bar "|"  %{ end measure 12 %} 
             e' 4  
             fis' 4  
             \bar "|"  %{ end measure 13 %} 
             g' 2  
             \bar "|."  %{ end measure 14 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_16" 
               _  
               _  
               _  
              "rule_16" 
               _  
               _  
              "Miss" 
              "rule_16" 
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
              "Is" 
              "dat" 
              "dan" 
              "geen" 
              "non" -- 
              "de" -- 
              "dju"__ 
              "Ja," 
              "dÃ¨" 
              "is" 
              "e" -- 
              "ne"__ 
              "non" -- 
              "de" -- 
              "dju"__ 
              "De" 
              "non" -- 
              "de" -- 
              "dju"__ 
              "en" 
              "een" 
              "pa" -- 
              "ra" -- 
              "plu."__ 
              "O," 
              "die" 
              "sjeu" -- 
              "ne,"__ 
              "o" 
              "die" 
              "sjeu" -- 
              "ne"__ 
              "O," 
              "die" 
              "sjeu" -- 
              "ne"__ 
              "pa" -- 
              "ra" -- 
              "plu."__ 
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
