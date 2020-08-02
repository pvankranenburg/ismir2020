\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB140425_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*24 
             \clef "treble" 
             \time 2/2
             \key f \major 
             d'' 4  
             d'' 8  
             d'' 8  
             d'' 4  
             \bar "|"  %{ end measure 0 %} 
             c'' 4  
             c'' 4  
             \color "blue" bes' 4  
             \color "blue" bes' 4  
             \bar "|"  %{ end measure 1 %} 
             \time 3/2
             \color "blue" a' 2  \fermata  
             r 4  
             a' 4  
             bes' 4  
             c'' 4  
             \bar "|"  %{ end measure 2 %} 
             \time 2/2
             d'' 2  
             c'' 4  
             \color "blue" c'' 4  
             \bar "|"  %{ end measure 3 %} 
             \time 3/2
             \color "blue" bes' 2  
             \color "blue" a' 2  \fermata  
             r 4  
             a' 4  
             \bar "|"  %{ end measure 4 %} 
             \time 2/2
             \times 2/3 { c'' 4  
                c'' 4  
                c'' 4  
                 } 
                
             \times 2/3 { c'' 2  
                a' 4  
                \bar "|"  %{ end measure 5 %} 
                \time 3/2
                \color "blue" c'' 2  
                \color "blue" cis'' 4  
                 } 
                
             \color "blue" d'' 4.  \fermata  
             r 8  
             r 4  
             g' 4  
             \bar "|"  %{ end measure 6 %} 
             \time 2/2
             bes' 4  
             d'' 4  
             c'' 4  
             bes' 4  
             \bar "|"  %{ end measure 7 %} 
             a' 2  
             g' 2  
             \bar "|"  %{ end measure 8 %} 
             r 4  
             \bar "|."  %{ end measure 9 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_16" 
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "De" 
              "min" -- 
              "ne"__ 
              "die" 
              "in" 
              "mijn" 
              "hart" -- 
              "je"__ 
              "leit" 
              "En" 
              "zal" 
              "niet" 
              "ein" -- 
              "den"__ 
              "nog" 
              "ster" -- 
              "ven,"__ 
              "Al" 
              "schijnt" 
              "het," 
              "dat" 
              "ik" 
              "door" 
              "te" -- 
              "gen" -- 
              "heid"__ 
              "Mijn" 
              "lief" 
              "zal" 
              "moe" -- 
              "ten"__ 
              "der" -- 
              "ven!"__ 
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
