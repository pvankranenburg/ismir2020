\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB073226_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 6/8
             \key g \major 
             \key g \major 
             \color "red" g' 4  
             \color "red" a' 8  
             \color "red" b' 4.  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" g' 4  
             \color "blue" a' 8  
             \color "blue" b' 4.  \fermata  
             \bar "|"  %{ end measure 2 %} 
             b' 4  
             d'' 8  
             d'' 8  
             d'' 8  
             c'' 8  
             \bar "|"  %{ end measure 3 %} 
             \color "red" b' 4  
             \color "red" c'' 8  
             \color "red" d'' 4  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 4 %} 
             d'' 4  
             d'' 8  
             d'' 4  
             e'' 8  
             \bar "|"  %{ end measure 5 %} 
             \color "red" d'' 4  
             \color "red" d'' 8  
             \color "red" a' 4  \fermata  
             b' 8  
             \bar "|"  %{ end measure 6 %} 
             c'' 8  
             c'' 8  
             b' 8  
             a' 8  
             a' 8  
             g' 8  
             \bar "|"  %{ end measure 7 %} 
             \color "red" fis' 4  
             \color "red" e' 8  
             \color "red" d' 4  \fermata  
             d' 8  
             \bar "|"  %{ end measure 8 %} 
             g' 8  
             g' 8  
             g' 8  
             g' 4  
             a' 8  
             \bar "|"  %{ end measure 9 %} 
             b' 8  
             \color "red" b' 8  
             \color "red" b' 8  
             \color "red" b' 4  \fermata  
             c'' 8  
             \bar "|"  %{ end measure 10 %} 
             d'' 8  
             d'' 8  
             d'' 8  
             c'' 8  
             \color "blue" b' 8  
             \color "blue" c'' 8  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" d'' 4.  ~  
             \color "blue" d'' 4  \fermata  
             d'' 8  
             \bar "|"  %{ end measure 12 %} 
             d'' 4  
             d'' 8  
             d'' 4  
             \color "red" e'' 8  
             \bar "|"  %{ end measure 13 %} 
             \color "red" d'' 4.  
             \color "red" a' 4  \fermata  
             b' 8  
             \bar "|"  %{ end measure 14 %} 
             c'' 4  
             b' 8  
             a' 4  
             g' 8  
             \bar "|"  %{ end measure 15 %} 
             \color "red" fis' 4  
             \color "red" e' 8  
             \color "red" d' 4  \fermata  
             d' 8  
             \bar "|"  %{ end measure 16 %} 
             g' 8  
             g' 8  
             g' 8  
             g' 4  
             a' 8  
             \bar "|"  %{ end measure 17 %} 
             b' 8  
             \color "red" b' 8  
             \color "red" b' 8  
             \color "red" b' 4  \fermata  
             c'' 8  
             \bar "|"  %{ end measure 18 %} 
             d'' 8  
             d'' 8  
             d'' 8  
             c'' 4  
             c'' 8  
             \bar "|"  %{ end measure 19 %} 
             d'' 4.  ~  
             d'' 4  
             \bar "|."  %{ end measure 20 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
              "rule_1" 
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
              "Miss" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_16" 
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
              "Jaap" 
              "sta" 
              "stil," 
              "Jaap" 
              "sta" 
              "stil," 
              "Hoor" 
              "nu" 
              "wat" 
              "ik" 
              "je" 
              "zeg" -- 
              "gen"__ 
              "wil." 
              "En" 
              "waar" -- 
              "om"__ 
              "zou" 
              "ik" 
              "stil" -- 
              "le"__ 
              "staan," 
              "Ik" 
              "heb" 
              "van" 
              "m'n" 
              "le" -- 
              "ven"__ 
              "geen" 
              "kwaad" 
              "ge" -- 
              "daan."__ 
              "Ik" 
              "zei" 
              "d'r" 
              "van" 
              "Jaap," 
              "ik" 
              "zei" 
              "d'r" 
              "van" 
              "Jaap," 
              "Ik" 
              "zei" 
              "d'r" 
              "van" 
              "Jaap" -- 
              "je"__ 
              "sta" 
              "stil." 
              "Hoe" -- 
              "ra,"__ 
              "hoe" -- 
              "ra"__ 
              "voor" 
              "Jaap" -- 
              "je,"__ 
              "Dat" 
              "was" 
              "een" 
              "aar" -- 
              "dig"__ 
              "knaap" -- 
              " " 
              "je."__ 
              "Ik" 
              "zei" 
              "d'r" 
              "van" 
              "Jaap," 
              "ik" 
              "zei" 
              "d'r" 
              "van" 
              "Jaap," 
              "Ik" 
              "zei" 
              "d'r" 
              "van" 
              "Jaap" 
              "sta" 
              "stil." 
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
