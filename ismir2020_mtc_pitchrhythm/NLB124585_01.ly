\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB124585_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \clef "treble" 
             \time 4/4
             \key g \major 
             \key g \major 
             d' 4  
             \bar "|"  %{ end measure 0 %} 
             g' 8.  
             a' 16  
             g' 8.  
             fis' 16  
             g' 8.  
             fis' 16  
             g' 8.  
             a' 16  
             \bar "|"  %{ end measure 1 %} 
             \color "red" b' 4.  
             \color "red" a' 8  
             \color "red" g' 4  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 2 %} 
             c'' 4  
             b' 4  
             \color "blue" a' 4  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" d'' 2  \fermata  
             r 4  
             b' 8.  
             c'' 16  
             \bar "|"  %{ end measure 4 %} 
             d'' 4  
             d'' 8.  
             d'' 16  
             d'' 4  
             d'' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" e'' 4.  
             \color "blue" c'' 8  
             \color "blue" a' 4  \fermata  
             a' 8.  
             b' 16  
             \bar "|"  %{ end measure 6 %} 
             c'' 8.  
             c'' 16  
             c'' 8.  
             c'' 16  
             c'' 8.  
             e'' 16  
             d'' 8.  
             c'' 16  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" b' 4.  
             \color "blue" a' 8  
             \color "blue" g' 4  \fermata  
             d' 8.  
             d' 16  
             \bar "|"  %{ end measure 8 %} 
             g' 4  
             \color "red" g' 8.  
             \color "red" g' 16  
             \color "red" g' 4  
             g' 8.  
             a' 16  
             \bar "|"  %{ end measure 9 %} 
             \color "red" b' 4  
             \color "red" b' 4  
             \color "red" b' 4  \fermata  
             b' 8.  
             c'' 16  
             \bar "|"  %{ end measure 10 %} 
             d'' 4  
             d'' 8.  
             d'' 16  
             d'' 4  
             e'' 8.  
             d'' 16  
             \bar "|"  %{ end measure 11 %} 
             d'' 8  
             c'' 8  
             \color "blue" c'' 8  
             \color "blue" b' 8  
             \color "blue" b' 4  \fermata  
             d'' 8.  
             c'' 16  
             \bar "|"  %{ end measure 12 %} 
             \color "red" b' 4.  
             \color "red" c'' 8  
             \color "red" a' 4  
             d'' 8.  
             c'' 16  
             \bar "|"  %{ end measure 13 %} 
             b' 4.  
             a' 8  
             g' 4  
             r 4  
             \bar "|."  %{ end measure 14 %} 
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
              "Miss" 
               _  
               _  
               _  
               _  
               _  
              "rule_3" 
               _  
               _  
               _  
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
              "rule_22" 
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
              "rule_15" 
               _  
               _  
               _  
               _  
              "rule_9" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Wat" 
              "zul" -- 
              "len"__ 
              "on" -- 
              "ze"__ 
              "pa" -- 
              "tri" -- 
              "o" -- 
              "tjes"__ 
              "e" -- 
              " " 
              "ten,"__ 
              "als" 
              "zij" 
              "in" 
              "'t le" -- 
              "ger"__ 
              "zijn?" 
              "Een" 
              " " 
              "kiek" -- 
              "sje"__ 
              "aan" 
              "'t spit" 
              "ge" -- 
              "ste" -- 
              " " 
              "ken,"__ 
              "dat" 
              " " 
              "zul" -- 
              "len"__ 
              "on" -- 
              "ze"__ 
              "pa" -- 
              "tri" -- 
              "o" -- 
              "tjes"__ 
              "e" -- 
              " " 
              "ten."__ 
              "Ka" -- 
              "pi" -- 
              "tein,"__ 
              "lui" -- 
              "te" -- 
              "nant,"__ 
              "vaan" 
              "le" -- 
              "rig,"__ 
              "ser" -- 
              "geant,"__ 
              "tam" -- 
              " " 
              "boer,"__ 
              "kor" -- 
              "po" -- 
              "raal,"__ 
              "pa" -- 
              "tri" -- 
              "o" -- 
              "tjes"__ 
              "al" -- 
              "te" -- 
              "maal,"__ 
              "ka" -- 
              "me" -- 
              "ra" -- 
              " " 
              "den,"__ 
              "ka" -- 
              "me" -- 
              "ra" -- 
              " " 
              "den."__ 
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
