\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB146739_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \clef "treble" 
             \time 3/4
             \key ees \major 
             \key ees \major 
             bes' 8.  
             \color "red" c'' 16  
             \bar "|"  %{ end measure 0 %} 
             \color "red" bes' 4  
             \color "red" g' 4  
             ees'' 8.  
             \color "blue" d'' 16  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" d'' 4  
             \color "blue" c'' 4  \fermata  
             d'' 8  
             ees'' 8  
             \bar "|"  %{ end measure 2 %} 
             f'' 4  ~  
             f'' 8  
             ees'' 8  
             d'' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" c'' 4  
             \color "blue" bes' 4  \fermata  
             bes' 8.  
             \color "red" c'' 16  
             \bar "|"  %{ end measure 4 %} 
             \color "red" bes' 4  
             \color "red" g' 4  
             ees'' 8.  
             \color "blue" d'' 16  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" d'' 4  
             \color "blue" c'' 4  \fermata  
             d'' 8  
             ees'' 8  
             \bar "|"  %{ end measure 6 %} 
             f'' 4  ~  
             f'' 8  
             ees'' 8  
             d'' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" c'' 4  
             \color "blue" bes' 4  \fermata  
             bes' 8.  
             \color "red" aes' 16  
             \bar "|"  %{ end measure 8 %} 
             \color "red" g' 4  
             \color "red" ees' 4  
             \color "blue" ees'' 8.  
             \color "blue" d'' 16  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" c'' 2  \fermata  
             d'' 8  
             ees'' 8  
             \bar "|"  %{ end measure 10 %} 
             f'' 4  ~  
             f'' 8  
             ees'' 8  
             \color "blue" d'' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" bes' 2  \fermata  
             bes' 8.  
             \color "red" aes' 16  
             \bar "|"  %{ end measure 12 %} 
             \color "red" g' 4  
             \color "red" ees' 4  
             \color "blue" ees'' 8.  
             \color "blue" d'' 16  
             \bar "|"  %{ end measure 13 %} 
             \color "blue" c'' 2  \fermata  
             d'' 8  
             \color "red" ees'' 8  
             \bar "|"  %{ end measure 14 %} 
             \color "red" bes' 4  
             \color "red" bes' 4  
             c'' 8  
             d'' 8  
             \bar "|"  %{ end measure 15 %} 
             ees'' 2  
             \bar "|."  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
              "rule_21" 
               _  
               _  
               _  
              "rule_21" 
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
              "rule_21" 
               _  
               _  
               _  
              "rule_21" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_21" 
               _  
               _  
               _  
              "rule_24" 
               _  
               _  
              "rule_14" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_9" 
               _  
               _  
               _  
              "rule_24" 
               _  
               _  
              "rule_14" 
               _  
               _  
               _  
              "rule_21" 
               _  
               _  
               _  
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Ka" -- 
              "rel"__ 
              "min" -- 
              "de"__ 
              "Ro" -- 
              "za"__ 
              "te" -- 
              "der,"__ 
              "met" 
              "het" 
              "vuur" 
              "den" 
              "jong" -- 
              "'ling"__ 
              "ei" -- 
              "gen."__ 
              "Ro" -- 
              "za"__ 
              "min" -- 
              "de"__ 
              "Kar" -- 
              "rel"__ 
              "we" -- 
              "der,"__ 
              "maar" 
              "hun" 
              "plicht" 
              "ge" -- 
              "bood"__ 
              "het" 
              "zwij" -- 
              "gen."__ 
              "Bei" -- 
              "der"__ 
              "stand" 
              "was" 
              "on" -- 
              "ge" -- 
              "lijk,"__ 
              "Ka" -- 
              "rel"__ 
              "arm" 
              "en" 
              "Ro" -- 
              "za"__ 
              "rijk." 
              "Bei" -- 
              "der"__ 
              "stand" 
              "was" 
              "on" -- 
              "ge" -- 
              "lijk,"__ 
              "Ka" -- 
              "rel"__ 
              "arm" 
              "en" 
              "Ro" -- 
              "za"__ 
              "rijk." 
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
