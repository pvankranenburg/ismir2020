\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB124615_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 2/4
             \key c \major 
             \key a \minor 
             a' 8  
             b' 8  
             c'' 8  
             c'' 8  
             \bar "|"  %{ end measure 1 %} 
             c'' 8  
             c'' 8  
             c'' 8  
             b' 8  
             \bar "|"  %{ end measure 2 %} 
             a' 4  
             b' 8  
             \color "red" a' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "red" gis' 4  
             \color "red" a' 8  \fermata  
             b' 8  
             \bar "|"  %{ end measure 4 %} 
             c'' 4  
             d'' 4  
             \bar "|"  %{ end measure 5 %} 
             c'' 4  
             b' 8  
             a' 8  
             \bar "|"  %{ end measure 6 %} 
             gis' 4  
             b' 4  
             \bar "|"  %{ end measure 7 %} 
             a' 2  
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Ach" -- 
              "ter"__ 
              "ro" -- 
              "zen" -- 
              "da" -- 
              "le" -- 
              "tje"__ 
              "zoo" 
              "staat" 
              "er" 
              "een" 
              "boom" -- 
              "pje,"__ 
              "waar" 
              "op" 
              "zal" 
              "zin" -- 
              "gen"__ 
              "de" 
              "nach" -- 
              "te" -- 
              "gaal."__ 
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
