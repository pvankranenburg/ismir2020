\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB075412_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*12 
             \clef "treble" 
             \time 6/8
             \key g \major 
             \key g \major 
             b' 4  
             a' 8  
             \bar "|"  %{ end measure 0 %} 
             g' 4  
             a' 8  
             b' 8  
             c'' 8  
             d'' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" e'' 4.  
             \color "red" d'' 4  
             \color "red" c'' 8  \fermata  
             \bar "|"  %{ end measure 2 %} 
             b' 4  
             b' 8  
             a' 4  
             b' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" c'' 4  
             \color "blue" b' 8  
             \color "blue" a' 4.  \fermata  
             \bar "|"  %{ end measure 4 %} 
             g' 4  
             b' 8  
             d'' 4  
             d'' 8  
             \bar "|"  %{ end measure 5 %} 
             d'' 4  
             e'' 8  
             \color "red" d'' 8  
             \color "red" e'' 8  
             \color "red" fis'' 8  \fermata  
             \bar "|"  %{ end measure 6 %} 
             g'' 4  
             fis'' 8  
             e'' 4  
             d'' 8  
             \bar "|"  %{ end measure 7 %} 
             c'' 8  
             e'' 8  
             d'' 8  
             b' 4.  
             \bar "|."  %{ end measure 8 %} 
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
              "rule_12" 
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
              "Luis" -- 
              "tert"__ 
              "oud" 
              "en" 
              "jong" 
              " " 
              "van" 
              "ja" -- 
              "ren"__ 
              " " 
              "Die" 
              "nog" 
              "leeft" 
              "in" 
              "de" -- 
              "ze"__ 
              "tijd" 
              "'t geen" 
              "ik" 
              "u" 
              "wil" 
              "o" -- 
              "pen" -- 
              "ba" -- 
              " " 
              "ren"__ 
              "Van" 
              "een" 
              "groot" 
              "mis" -- 
              "da" -- 
              " " 
              "dig" -- 
              "heid."__ 
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
