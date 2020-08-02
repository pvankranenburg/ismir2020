\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB074457_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 2/4
             \key g \major 
             \key g \major 
             d'' 8  
             d'' 16  
             d'' 16  
             g'' 8  
             g'' 16  
             g'' 16  
             \bar "|"  %{ end measure 1 %} 
             b' 8  
             b' 16  
             \color "red" b' 16  
             \color "red" e'' 8  
             \color "red" d'' 8  \fermata  
             \bar "|"  %{ end measure 2 %} 
             d'' 8  
             d'' 8  
             d'' 8  
             d'' 16  
             d'' 16  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" e'' 8  
             \color "blue" d'' 8  
             \color "blue" a' 4  \fermata  
             \bar "|"  %{ end measure 4 %} 
             d'' 8  
             e'' 16  
             fis'' 16  
             g'' 8.  
             fis'' 16  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" e'' 8  
             \color "blue" d'' 8  
             \color "blue" c'' 4  \fermata  
             \bar "|"  %{ end measure 6 %} 
             d'' 8  
             fis'' 8  
             a'' 8.  
             g'' 16  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" fis'' 8  
             \color "blue" e'' 8  
             \color "blue" d'' 4  \fermata  
             \bar "|"  %{ end measure 8 %} 
             d'' 8  
             e'' 16  
             fis'' 16  
             g'' 8  
             fis'' 16  
             e'' 16  
             \bar "|"  %{ end measure 9 %} 
             d'' 16  
             e'' 16  
             \color "red" d'' 16  
             \color "red" c'' 16  
             \color "red" b' 8  \fermata  
             a' 16  
             b' 16  
             \bar "|"  %{ end measure 10 %} 
             c'' 8  
             e'' 8  
             \color "blue" d'' 8  
             \color "blue" d'' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" g' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 12 %} 
             d'' 8  
             e'' 16  
             fis'' 16  
             g'' 8  
             fis'' 16  
             e'' 16  
             \bar "|"  %{ end measure 13 %} 
             d'' 16  
             e'' 16  
             \color "red" d'' 16  
             \color "red" c'' 16  
             \color "red" b' 8  \fermata  
             a' 16  
             b' 16  
             \bar "|"  %{ end measure 14 %} 
             c'' 8  
             e'' 8  
             d'' 8  
             d'' 8  
             \bar "|"  %{ end measure 15 %} 
             g' 4  
             r 4  
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
               _  
              "Miss" 
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
              "Miss" 
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
              "Vrien" -- 
              "den"__ 
              "ik" 
              "zal" 
              "je" 
              "een" 
              "klucht" -- 
              "je"__ 
              "ver" -- 
              "ha" -- 
              "len"__ 
              "Luis" -- 
              "ter"__ 
              "uit" 
              "wat" 
              "een" 
              "ra" -- 
              "re"__ 
              "grap" 
              "Van" 
              "een" 
              " " 
              "lo" -- 
              "ze"__ 
              "schip" -- 
              "pers" -- 
              "vent"__ 
              "op" 
              "zijn" 
              "schip" 
              "was" 
              "hij" 
              "be" -- 
              "kend"__ 
              "Hij" 
              "kan" 
              "er" 
              "zei" -- 
              "len"__ 
              "ja" 
              "bij" 
              " " 
              " " 
              "de" 
              "nacht" 
              "ja" 
              "zo" 
              "goed" 
              "als" 
              "op" 
              "den" 
              "dag" 
              "Hij" 
              "kan" 
              "er" 
              "zei" -- 
              "len"__ 
              "ja" 
              "bij" 
              " " 
              " " 
              "de" 
              "nacht" 
              "ja" 
              "zo" 
              "goed" 
              "als" 
              "op" 
              "den" 
              "dag" 
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
