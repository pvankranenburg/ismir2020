\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB112521_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 6/8
             \key c \major 
             \key c \major 
             g' 8  
             \bar "|"  %{ end measure 0 %} 
             c'' 8  
             c'' 8  
             c'' 8  
             a' 8  
             a' 8  
             a' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" g' 4  
             \color "blue" f' 8  
             \color "blue" e' 4  \fermata  
             g' 8  
             \bar "|"  %{ end measure 2 %} 
             a' 8  
             g' 8  
             f' 8  
             d' 8  
             \color "blue" e' 8  
             \color "blue" f' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" g' 4.  ~  
             \color "blue" g' 4  \fermata  
             g' 8  
             \bar "|"  %{ end measure 4 %} 
             c'' 4  
             c'' 8  
             a' 4  
             a' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" g' 4  
             \color "blue" f' 8  
             \color "blue" e' 4  \fermata  
             g' 8  
             \bar "|"  %{ end measure 6 %} 
             g' 8  
             a' 8  
             g' 8  
             f' 8  
             e' 8  
             d' 8  
             \bar "|"  %{ end measure 7 %} 
             c' 4.  ~  
             c' 4  
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
              "rule_7" 
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
              "rule_7" 
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
              "ging" 
              "eens" 
              "een" 
              "ja" -- 
              "ger"__ 
              "uit" 
              "ja" -- 
              " " 
              "gen"__ 
              "Zoo" 
              "ver" -- 
              "re"__ 
              "al" 
              "in" 
              " " 
              "het" 
              "woud" 
              "Hij" 
              "vnd" 
              "er" 
              "niets" 
              "te" 
              "ja" -- 
              " " 
              "gen"__ 
              "Als" 
              "een" 
              " " 
              "ge" -- 
              "bon" -- 
              "den"__ 
              "man" 
              "oud." 
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
