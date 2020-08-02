\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB123278_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 3/4
             \key ees \major 
             \key c \minor 
             c'' 8  
             \bar "|"  %{ end measure 0 %} 
             c'' 8  
             g' 8  
             c'' 4.  
             d'' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" d'' 8  
             \color "red" ees'' 8  
             \color "red" c'' 4.  
             ees'' 8  
             \bar "|"  %{ end measure 2 %} 
             ees'' 8  
             ees'' 8  
             d'' 4.  
             \color "red" c'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "red" c'' 4  
             \color "red" d'' 4  \fermata  
             r 8  
             ees'' 8  
             \bar "|"  %{ end measure 4 %} 
             \color "red" d'' 8  
             \color "red" d'' 8  
             \color "red" d'' 4.  
             d'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" ees'' 8  
             \color "red" c'' 8  
             \color "red" b' 4.  
             g' 8  
             \bar "|"  %{ end measure 6 %} 
             c'' 8  
             d'' 8  
             ees'' 4.  
             d'' 8  
             c'' 8  
             \bar "|"  %{ end measure 7 %} 
             b' 4  
             c'' 8  
             r 8  
             r 4  
             \bar "|."  %{ end measure 8 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
              "rule_9" 
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
              "rule_10" 
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Schoon" 
              "lief," 
              "hoe" 
              "ligt" 
              "gy" 
              "hier" 
              "en" 
              "slaept" 
              "in" 
              "u" -- 
              "wen"__ 
              "eer" -- 
              "sten"__ 
              "droo" -- 
              "me?"__ 
              "Wil" 
              "op" -- 
              "staen"__ 
              "en" 
              "den" 
              "mei" 
              "ont" -- 
              "faÃªn,"__ 
              "hy" 
              "staet" 
              "hier" 
              "al" 
              " " 
              "zoo" 
              "schoo" -- 
              "ne."__ 
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
