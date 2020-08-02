\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB071438_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 4/4
             \key g \major 
             \key g \major 
             d'' 4  
             b' 4  
             \color "red" d'' 8  
             \color "red" d'' 8  
             \color "red" b' 4  
             \bar "|"  %{ end measure 1 %} 
             d'' 8  
             d'' 8  
             e'' 8  
             e'' 8  
             \color "blue" d'' 8  
             \color "blue" d'' 8  
             \color "blue" b' 4  \fermata  
             \bar "|"  %{ end measure 2 %} 
             c'' 8  
             c'' 8  
             c'' 8  
             g' 8  
             c'' 8  
             c'' 8  
             c'' 8.  
             c'' 16  
             \bar "|"  %{ end measure 3 %} 
             e'' 8  
             d'' 8  
             c'' 16  
             c'' 16  
             b' 8  
             a' 8  
             a' 8  
             g' 4  
             \bar "|."  %{ end measure 4 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
              "rule_1" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_1" 
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
               _  
               _  
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Lui" -- 
              "lak"__ 
              "bed" -- 
              "de" -- 
              "zak,"__ 
              "sta" 
              "om" 
              "ne" -- 
              "gen"__ 
              "u" -- 
              "ren"__ 
              "op." 
              "Ne" -- 
              "gen"__ 
              "uur" 
              "om" 
              "hal" -- 
              "lef"__ 
              "tien" 
              "dan" 
              "is" 
              "de" 
              "lui" -- 
              "lak"__ 
              "nog" 
              "niet" 
              "te" 
              "zien." 
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
