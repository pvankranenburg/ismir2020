\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB073833_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*12 
             \clef "treble" 
             \time 6/8
             \key g \major 
             \key g \major 
             g' 4  
             a' 8  
             \bar "|"  %{ end measure 0 %} 
             b' 4  
             b' 8  
             c'' 4  
             \color "red" d'' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" b' 4  
             \color "red" b' 8  \fermata  
             c'' 4  
             d'' 8  
             \bar "|"  %{ end measure 2 %} 
             b' 4  
             b' 8  
             \color "blue" a' 4  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" g' 4.  \fermata  
             g' 4  
             a' 8  
             \bar "|"  %{ end measure 4 %} 
             b' 4  
             b' 8  
             c'' 4  
             \color "red" d'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" b' 4  
             \color "red" b' 8  \fermata  
             c'' 4  
             d'' 8  
             \bar "|"  %{ end measure 6 %} 
             b' 4  
             b' 8  
             \color "blue" a' 4  
             \color "blue" a' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" g' 4.  \fermata  
             g' 4  
             g' 8  
             \bar "|"  %{ end measure 8 %} 
             e'' 4.  
             \color "red" e'' 4  
             \color "red" e'' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "red" d'' 4.  \fermata  
             e'' 4  
             d'' 8  
             \bar "|"  %{ end measure 10 %} 
             c'' 4  
             e'' 8  
             \color "blue" d'' 4  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" b' 4.  \fermata  
             g' 4  
             g' 8  
             \bar "|"  %{ end measure 12 %} 
             e'' 4.  
             \color "red" e'' 4  
             \color "red" e'' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "red" d'' 4.  \fermata  
             e'' 4  
             d'' 8  
             \bar "|"  %{ end measure 14 %} 
             c'' 4  
             c'' 8  
             b' 4  
             a' 8  
             \bar "|"  %{ end measure 15 %} 
             g' 4.  
             \bar "|."  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_5" 
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
              "rule_5" 
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
              "rule_7" 
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Su" -- 
              "ker" -- 
              "jont" -- 
              "jen"__ 
              "lich" 
              "tÃ³" 
              "slie" -- 
              "pen"__ 
              "Moai" 
              "de" 
              "hÃ³" -- 
              "le"__ 
              "op" 
              "'e" 
              "dis" 
              "Tuf" 
              "ter" -- 
              "noai"__ 
              "dÃ³" 
              "rup" -- 
              "te"__ 
              "Tryn" -- 
              "tjen"__ 
              "'k Leauw," 
              "dot" 
              "ik" 
              "in" 
              "kuÃ©" -- 
              "ke"__ 
              "mis!" 
              "Lyt" -- 
              "je"__ 
              "rÃºn," 
              "Lyt" -- 
              "je"__ 
              "rÃºn" 
              "Troai" 
              "kear" 
              "rewm" 
              "om" 
              "Fol" -- 
              "kerts"__ 
              "schÃºn" 
              "Lyt" -- 
              "je"__ 
              "rÃºn," 
              "Lyt" -- 
              "je"__ 
              "rÃºn" 
              "Troai" 
              "kear" 
              "rewm" 
              "om" 
              "Fol" -- 
              "kerts"__ 
              "schÃºn." 
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
