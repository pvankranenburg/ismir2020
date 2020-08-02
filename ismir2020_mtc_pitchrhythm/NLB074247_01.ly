\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB074247_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 4/4
             \key g \major 
             \key g \major 
             d'' 2  
             g' 4  
             b' 4  
             \bar "|"  %{ end measure 1 %} 
             d'' 2  
             e'' 2  
             \bar "|"  %{ end measure 2 %} 
             d'' 4.  
             d'' 8  
             \color "blue" c'' 4  
             \color "blue" b' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" c'' 1  \fermata  
             \bar "|"  %{ end measure 4 %} 
             c'' 2  
             c'' 4  
             c'' 4  
             \bar "|"  %{ end measure 5 %} 
             d'' 4  
             fis'' 4  
             e'' 4  
             e'' 4  
             \bar "|"  %{ end measure 6 %} 
             d'' 2  
             \color "blue" a' 4  
             \color "red" c'' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "red" b' 1  \fermata  
             \bar "|"  %{ end measure 8 %} 
             \color "red" b' 2  
             d'' 4.  
             g' 8  
             \bar "|"  %{ end measure 9 %} 
             b' 2.  
             a' 4  
             \bar "|"  %{ end measure 10 %} 
             g' 4  
             a' 4  
             b' 4  
             \color "blue" d'' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" e'' 2  
             \color "blue" d'' 2  \fermata  
             \bar "|"  %{ end measure 12 %} 
             r 4  
             g'' 4  
             fis'' 4  
             fis'' 4  
             \bar "|"  %{ end measure 13 %} 
             e'' 2.  
             d'' 4  
             \bar "|"  %{ end measure 14 %} 
             a' 4  
             b' 4  
             c'' 4  
             d'' 4  
             \bar "|"  %{ end measure 15 %} 
             e'' 2  
             d'' 2  
             \bar "|."  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
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
              "rule_1" 
              "rule_14" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_20" 
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
              "Daar" 
              "was" 
              "een" 
              "meis" -- 
              "je"__ 
              "die" 
              "was" 
              "zwaar" 
              "be" -- 
              "laan"__ 
              "die" 
              "met" 
              "haar" 
              "e" -- 
              "zel"__ 
              "naar" 
              "de" 
              "markt" 
              "zou" 
              " " 
              "gaan" 
              "maar" 
              "gro" -- 
              "te"__ 
              "tijd" 
              "wat" 
              "vond" 
              "zij" 
              "op" 
              "haar" 
              "we" -- 
              "gen"__ 
              "een" 
              "val" -- 
              "se"__ 
              "gre" -- 
              "na" -- 
              "dier"__ 
              "die" 
              "kwam" 
              "haar" 
              "te" -- 
              "gen."__ 
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
