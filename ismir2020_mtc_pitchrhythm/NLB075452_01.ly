\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB075452_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*12 
             \clef "treble" 
             \time 3/4
             \key g \major 
             \key g \major 
             d'' 8  
             d'' 8  
             d'' 8  
             \bar "|"  %{ end measure 0 %} 
             b' 4  
             d'' 4  
             \color "blue" c'' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" a' 4.  \fermata  
             d'' 8  
             cis'' 8  
             d'' 8  
             \bar "|"  %{ end measure 2 %} 
             e'' 4  
             a' 4  
             \color "blue" fis'' 8  
             \color "blue" e'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" d'' 4.  \fermata  
             d'' 8  
             d'' 8  
             d'' 8  
             \bar "|"  %{ end measure 4 %} 
             b' 4  
             d'' 4  
             \color "blue" c'' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" a' 4.  \fermata  
             d'' 8  
             cis'' 8  
             d'' 8  
             \bar "|"  %{ end measure 6 %} 
             e'' 4  
             a' 4  
             fis'' 8  
             e'' 8  
             \bar "|"  %{ end measure 7 %} 
             d'' 4.  
             \bar "|."  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_5" 
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Er" 
              "liep" 
              "een" 
              "meis" -- 
              "je"__ 
              "langs" 
              "de" 
              "straat" 
              "Al" 
              "met" 
              "een" 
              "mand" 
              "vol" 
              "ei" -- 
              "e" -- 
              "ren"__ 
              "Die" -- 
              "hol" -- 
              "le" -- 
              "die,"__ 
              "die" -- 
              "hol" -- 
              "le" -- 
              "da,"__ 
              "Die" -- 
              "hol" -- 
              "le" -- 
              "die,"__ 
              "die" -- 
              "hol" -- 
              "le" -- 
              "da."__ 
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
