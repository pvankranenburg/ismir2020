\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB070744_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 3/4
             \key g \major 
             \key g \major 
             d' 8  
             \bar "|"  %{ end measure 0 %} 
             b' 8.  
             a' 16  
             b' 4.  
             c'' 8  
             \bar "|"  %{ end measure 1 %} 
             \color "red" d'' 8.  
             \color "red" e'' 16  
             \color "red" d'' 4.  \fermata  
             e'' 16  
             d'' 16  
             \bar "|"  %{ end measure 2 %} 
             \time 2/4
             d'' 8.  
             b' 16  
             \color "blue" c'' 8  
             \color "blue" d'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" b' 4.  \fermata  
             d' 8  
             \bar "|"  %{ end measure 4 %} 
             \time 3/4
             b' 8.  
             a' 16  
             b' 4.  
             c'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" d'' 8.  
             \color "blue" e'' 16  
             \color "blue" d'' 4.  \fermata  
             a' 8  
             \bar "|"  %{ end measure 6 %} 
             d'' 8  
             e'' 8  
             \color "blue" fis'' 4  
             \color "blue" e'' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" d'' 4  \fermata  
             r 4  
             r 8  
             d'' 8  
             \bar "|"  %{ end measure 8 %} 
             d'' 8  
             g'' 8  
             fis'' 4.  
             e'' 8  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" e'' 8.  
             \color "blue" d'' 16  
             \color "blue" d'' 4.  \fermata  
             e'' 8  
             \bar "|"  %{ end measure 10 %} 
             \time 2/4
             d'' 8.  
             b' 16  
             \color "blue" c'' 8  
             \color "blue" d'' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" b' 4.  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 12 %} 
             \time 3/4
             d'' 8  
             g'' 8  
             fis'' 4.  
             e'' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "blue" e'' 8.  
             \color "blue" d'' 16  
             \color "blue" d'' 4.  \fermata  
             e'' 8  
             \bar "|"  %{ end measure 14 %} 
             \time 2/4
             d'' 8.  
             b' 16  
             c'' 8  
             b' 8  
             \bar "|"  %{ end measure 15 %} 
             g' 4  
             r 8  
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
              "rule_11" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_13" 
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
              "rule_15" 
               _  
               _  
               _  
               _  
               _  
              "rule_11" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_15" 
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
              "Mijn" 
              "tam" -- 
              "boe" -- 
              "rijn"__ 
              "klinkt" 
              "heel" 
              "de" 
              "dag," 
              "Op" 
              "het" 
              "rink" -- 
              "len"__ 
              "van" 
              "de" 
              "maat" 
              "Heb" 
              "ik" 
              "ge" -- 
              "zon" -- 
              "gen"__ 
              "en" 
              "ge" -- 
              "danst"__ 
              "Langs" 
              "markt" 
              "en" 
              "plein" 
              "of" 
              "straat" 
              "Men" 
              "gaf" 
              "niet" 
              "veel," 
              "want" 
              "me" -- 
              "nig" -- 
              "een"__ 
              "Zag" 
              "mij" 
              "min" -- 
              "ach" -- 
              "tend"__ 
              "aan;" 
              "En" 
              "sprak:" 
              "Zeg" 
              "deer" -- 
              "ne"__ 
              "kunt" 
              "gij" 
              "niet" 
              "Als" 
              "ik" 
              "uit" 
              "wer" -- 
              "ken"__ 
              "gaan." 
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
