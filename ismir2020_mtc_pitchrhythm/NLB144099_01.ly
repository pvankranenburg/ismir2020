\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB144099_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 4/4
             \key g \major 
             \key e \minor 
             b' 8  
             \bar "|"  %{ end measure 0 %} 
             b' 4.  
             b' 8  
             c'' 4.  
             b' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" a' 4.  
             \color "blue" g' 8  
             \color "blue" fis' 4  \fermata  
             fis' 8  
             g' 8  
             \bar "|"  %{ end measure 2 %} 
             a' 4  
             a' 4  
             b' 4  
             b' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "red" g' 4  
             \color "red" e' 4  
             \color "red" dis' 4  \fermata  
             \color "red" b 8  
             b 8  
             \bar "|"  %{ end measure 4 %} 
             e' 8  
             e' 8  
             fis' 4  
             b' 4  
             b' 4  
             \bar "|"  %{ end measure 5 %} 
             \time 6/4
             \times 2/3 { g' 4  
                e' 4  
                g' 4  
                 } 
                
             e' 2.  
             r 8  
             \bar "|."  %{ end measure 6 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
              "rule_30" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "Miss" 
              "rule_27" 
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
              "O" 
              "dag," 
              "o" 
              "lang" 
              "ge" -- 
              "wens" -- 
              "te"__ 
              "dag," 
              "En" 
              "waar" 
              "me" -- 
              "nig"__ 
              "mens" 
              "naar" 
              "wen" -- 
              "se"__ 
              "mag" 
              "On" -- 
              "ze"__ 
              "ske" -- 
              "pies"__ 
              "die" 
              "ko" -- 
              "men"__ 
              "bin" -- 
              " " 
              " " 
              "nen."__ 
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
