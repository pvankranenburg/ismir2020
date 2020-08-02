\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB074213_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*16 
             \clef "treble" 
             \time 9/8
             \key g \major 
             \key g \major 
             g' 8  
             g' 4  
             b' 8  
             \bar "|"  %{ end measure 0 %} 
             d'' 4.  
             e'' 4  
             e'' 8  
             \color "blue" d'' 4  
             \color "blue" fis' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" a' 4.  ~  
             \color "blue" a' 4  \fermata  
             e'' 8  
             fis'' 4  
             e'' 8  
             \bar "|"  %{ end measure 2 %} 
             d'' 4.  
             fis'' 4.  
             \color "blue" e'' 4  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 3 %} 
             \time 6/8
             \color "blue" d'' 4.  ~  
             \color "blue" d'' 4  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 4 %} 
             b' 4  
             d'' 8  
             e'' 4  
             d'' 8  
             \bar "|"  %{ end measure 5 %} 
             d'' 8  
             \color "red" d'' 8  
             \color "red" b' 8  
             \color "red" d'' 4  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 6 %} 
             b' 4  
             a' 8  
             b' 4  
             a' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "red" g' 4  
             \color "red" g' 8  
             \color "red" d' 4  \fermata  
             d' 8  
             \bar "|"  %{ end measure 8 %} 
             g' 4  
             g' 8  
             a' 4  
             d'' 8  
             \bar "|"  %{ end measure 9 %} 
             e'' 4  
             e'' 8  
             d'' 4  
             g' 8  
             \bar "|"  %{ end measure 10 %} 
             a' 4  
             b' 8  
             g' 4  
             \bar "|."  %{ end measure 11 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_0" 
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
               _  
               _  
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Er" 
              "was" 
              "een" 
              "boer" 
              "met" 
              "zo'n" 
              "groot" 
              "ge" -- 
              "tal"__ 
              "vier" 
              "zwa" -- 
              "re"__ 
              "koe" -- 
              "ien"__ 
              "op" 
              "de" 
              "stal" 
              "Hij" 
              "heeft" 
              "z'al" 
              "aan" 
              "de" 
              "sla" -- 
              "ger"__ 
              "ver" -- 
              "kocht"__ 
              "en" 
              "naar" 
              "de" 
              "sla" -- 
              "ger"__ 
              "toe" -- 
              "ge" -- 
              "bracht"__ 
              "het" 
              "geld" 
              "er" -- 
              "voor"__ 
              "ont" -- 
              "vang" -- 
              "en"__ 
              "met" 
              "ver" -- 
              "lang" -- 
              " " 
              "en."__ 
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
