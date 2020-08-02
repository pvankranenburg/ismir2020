\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB113195_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*16 
             \clef "treble" 
             \time 6/8
             \key f \major 
             \key d \minor 
             a' 8  
             a' 8.  
             g' 16  
             a' 8  
             \bar "|"  %{ end measure 0 %} 
             \time 9/8
             f' 4.  
             d' 4  
             e' 8  
             f' 8.  
             \color "blue" f' 16  
             \color "blue" g' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" a' 4.  ~  
             \color "blue" a' 4  \fermata  
             g' 8  
             a' 4  
             bes' 8  
             \bar "|"  %{ end measure 2 %} 
             \time 6/8
             c'' 4  
             c'' 8  
             d'' 4  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" c'' 4.  
             \color "blue" a' 4.  \fermata  
             \bar "|"  %{ end measure 4 %} 
             r 4  
             d'' 8  
             d'' 8.  
             e'' 16  
             f'' 8  
             \bar "|"  %{ end measure 5 %} 
             \time 9/8
             c'' 4.  
             a' 4  
             c'' 8  
             c'' 8.  
             \color "blue" bes' 16  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" g' 4.  ~  
             \color "blue" g' 4  \fermata  
             c' 8  
             f' 4  
             g' 8  
             \bar "|"  %{ end measure 7 %} 
             \time 6/8
             a' 8.  
             g' 16  
             f' 8  
             a' 4  
             g' 8  
             \bar "|"  %{ end measure 8 %} 
             f' 4.  
             d' 4.  
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
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Te" 
              "Vlis" -- 
              "sin" -- 
              "gen"__ 
              "leit" 
              "er" 
              "een" 
              "jacht" -- 
              "je"__ 
              "be" -- 
              "reid"__ 
              "Om" 
              "naar" 
              "Oos" -- 
              "tin" -- 
              "je"__ 
              "toe" 
              "te" 
              "va" -- 
              "ren."__ 
              "Daar" 
              "op" 
              "er" 
              "zoo" 
              "rust" 
              "een" 
              "klein" 
              "Cu" -- 
              " " 
              "pi" -- 
              "do"__ 
              "Die" 
              "speelt" 
              "op" 
              "zijn" 
              " " 
              "ver" -- 
              "gul" -- 
              "de"__ 
              "sna" -- 
              "ren."__ 
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
