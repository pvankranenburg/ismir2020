\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB142316_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 2/4
             \key c \major 
             \key c \major 
             c' 8  
             \bar "|"  %{ end measure 0 %} 
             c' 4  
             c' 8  
             \color "red" c' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" c' 4  
             \color "red" c' 8  \fermata  
             c' 8  
             \bar "|"  %{ end measure 2 %} 
             c' 8  
             c' 16  
             c' 16  
             c' 8  
             c' 8  
             \bar "|"  %{ end measure 3 %} 
             c' 8  
             \color "red" c' 16  
             \color "red" c' 16  
             \color "red" c' 8  \fermata  
             c' 8  
             \bar "|"  %{ end measure 4 %} 
             c' 8  
             c' 16  
             c' 16  
             c' 8  
             c' 8  
             \bar "|"  %{ end measure 5 %} 
             c' 8  
             \color "red" c' 16  
             \color "red" c' 16  
             \color "red" c' 8  \fermata  
             \color "red" c' 8  
             \bar "|"  %{ end measure 6 %} 
             \color "red" f' 4.  
             c' 8  
             \bar "|"  %{ end measure 7 %} 
             f' 4.  
             r 8  
             \bar "|."  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "Miss" 
               _  
              "rule_16" 
               _  
               _  
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Den" 
              "be" -- 
              "zem,"__ 
              "den" 
              "be" -- 
              "zem,"__ 
              "Wat" 
              "doen" 
              "we" 
              "der" 
              "mee," 
              "Wat" 
              "doen" 
              "we" 
              "der" 
              "mee," 
              "We" 
              "ve" -- 
              "gen"__ 
              "der" 
              "mee," 
              "We" 
              "ve" -- 
              "gen"__ 
              "der" 
              "mee," 
              "Den" 
              "vloer," 
              "den" 
              "vloer." 
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
