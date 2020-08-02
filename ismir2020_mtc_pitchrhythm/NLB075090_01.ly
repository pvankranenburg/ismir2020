\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB075090_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*12 
             \clef "treble" 
             \time 6/8
             \key g \major 
             \key g \major 
             d' 4  
             d' 8  
             \bar "|"  %{ end measure 0 %} 
             g' 4  
             g' 8  
             g' 8  
             g' 8  
             \color "red" g' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" g' 4  
             \color "red" g' 8  \fermata  
             fis' 8  
             fis' 8  
             g' 8  
             \bar "|"  %{ end measure 2 %} 
             a' 4.  
             a' 8  
             \color "blue" a' 8  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 4.  \fermata  
             d' 4  
             d' 8  
             \bar "|"  %{ end measure 4 %} 
             a' 4  
             a' 8  
             a' 8  
             a' 8  
             \color "red" a' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" a' 4  
             \color "red" a' 8  \fermata  
             g' 8  
             g' 8  
             a' 8  
             \bar "|"  %{ end measure 6 %} 
             b' 4.  
             b' 8  
             \color "blue" b' 8  
             \color "blue" b' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" b' 4.  \fermata  
             b' 4  
             b' 8  
             \bar "|"  %{ end measure 8 %} 
             c'' 4  
             c'' 8  
             c'' 8  
             c'' 8  
             \color "red" c'' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "red" c'' 4  
             \color "red" c'' 8  \fermata  
             d'' 4  
             c'' 8  
             \bar "|"  %{ end measure 10 %} 
             b' 8.  
             b' 16  
             b' 8  
             b' 4  
             \color "red" a' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "red" g' 4  
             \color "red" g' 8  \fermata  
             g' 8  
             g' 8  
             a' 8  
             \bar "|"  %{ end measure 12 %} 
             b' 4  
             b' 8  
             b' 8  
             a' 8  
             g' 8  
             \bar "|"  %{ end measure 13 %} 
             a' 4  
             a' 8  
             a' 8  
             g' 8  
             fis' 8  
             \bar "|"  %{ end measure 14 %} 
             g' 4.  
             \bar "|."  %{ end measure 15 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_26" 
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
              "rule_22" 
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
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "En" 
              "ons" 
              "Mie" -- 
              "ke"__ 
              "had" 
              "e" -- 
              "ne"__ 
              "vrij" -- 
              "er"__ 
              "Han" -- 
              "ne" -- 
              "ke"__ 
              "hoep," 
              "Han" -- 
              "ne" -- 
              "ke"__ 
              "hoep." 
              "En" 
              "ons" 
              "Mie" -- 
              "ke"__ 
              "had" 
              "e" -- 
              "ne"__ 
              "vrij" -- 
              "er"__ 
              "Han" -- 
              "ne" -- 
              "ke"__ 
              "hoep," 
              "Han" -- 
              "ne" -- 
              "ke"__ 
              "hoep." 
              "En" 
              "ons" 
              "Mie" -- 
              "ke"__ 
              "had" 
              "e" -- 
              "ne"__ 
              "vrij" -- 
              "er"__ 
              "En" 
              "dat" 
              "was" 
              "e" -- 
              "nen"__ 
              "hon" -- 
              "ger" -- 
              "lij" -- 
              "der"__ 
              "Han" -- 
              "ne" -- 
              "ke"__ 
              "hoep" 
              "en" 
              "Han" -- 
              "ne" -- 
              "ke"__ 
              "hoep," 
              "en" 
              "Han" -- 
              "ne" -- 
              "ke"__ 
              "hoep." 
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
