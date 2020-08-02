\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB167459_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 4/4
             \key a \major 
             \key a \major 
             \color "blue" a' 2  
             \color "blue" cis'' 2  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" fis' 2  \fermata  
             r 2  
             \bar "|"  %{ end measure 2 %} 
             b' 4  
             cis'' 4  
             \color "blue" d'' 4  
             \color "blue" b' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" cis'' 2  \fermata  
             r 4  
             e'' 8  
             \color "blue" d'' 8  
             \bar "|"  %{ end measure 4 %} 
             \color "blue" cis'' 4  
             \color "blue" a' 4  \fermata  
             r 4  
             a' 8  
             \color "red" cis'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" d'' 4  
             \color "blue" fis'' 4  \fermata  
             r 4  
             \color "blue" d'' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" e' 2  \fermata  
             r 4  
             e'' 4  
             \bar "|"  %{ end measure 7 %} 
             e'' 4  
             \color "red" e'' 8  
             \color "red" d'' 8  
             \color "red" cis'' 4  
             \color "red" cis'' 8  
             \color "red" b' 8  
             \bar "|"  %{ end measure 8 %} 
             \color "red" a' 4  \fermata  
             cis'' 4  
             a' 4  
             \color "red" fis' 8  
             \color "red" a' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "red" b' 4  \fermata  
             b' 8  
             cis'' 8  
             d'' 4  
             \color "red" b' 8  
             \color "red" a' 8  
             \bar "|"  %{ end measure 10 %} 
             \color "red" gis' 4  \fermata  
             a' 8  
             a' 8  
             b' 4  
             gis' 4  
             \bar "|"  %{ end measure 11 %} 
             a' 4  
             \color "red" cis'' 8  
             \color "red" cis'' 8  
             \color "red" a' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 12 %} 
             a' 2  
             \color "red" fis' 2  
             \bar "|"  %{ end measure 13 %} 
             \color "red" d' 2  
             \color "red" b 2  
             \bar "|"  %{ end measure 14 %} 
             e' 4  
             cis' 4  
             b 4  
             e' 4  
             \bar "|"  %{ end measure 15 %} 
             a 2  
             \bar "|."  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
              "rule_1" 
               _  
               _  
               _  
               _  
              "rule_14" 
               _  
               _  
               _  
              "rule_14" 
               _  
               _  
               _  
              "Miss" 
               _  
              "rule_20" 
               _  
               _  
               _  
               _  
              "rule_30" 
               _  
               _  
              "Miss" 
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
              "rule_2" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Bo" -- 
              "na"__ 
              "nox," 
              "Bist" 
              "a" 
              "rech" -- 
              "ter"__ 
              "Ochs:" 
              "Bo" -- 
              "na"__ 
              "no" -- 
              "te"__ 
              "Lie" -- 
              "be"__ 
              "Lot" -- 
              "te"__ 
              "Bonn'" 
              "nuit" 
              "Pfui" 
              "pfui" 
              "Good" -- 
              " " 
              "night,"__ 
              "goo" -- 
              " " 
              "night"__ 
              "Heut" 
              "muss" 
              "man" 
              "so" 
              "weit" 
              "Gu" -- 
              "te"__ 
              "Nacht," 
              "Gu" -- 
              "te"__ 
              "nacht" 
              "Mar" -- 
              "schin's"__ 
              "Bett," 
              "Gibt's" 
              "kracht!" 
              "Gu" -- 
              "te"__ 
              "Nacht!" 
              "Schlaf" 
              "sei" 
              "g'sund," 
              "Und" 
              "werd" 
              "recht" 
              "ku" -- 
              "gel" -- 
              "rund!"__ 
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
