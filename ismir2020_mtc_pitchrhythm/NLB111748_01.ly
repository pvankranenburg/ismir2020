\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB111748_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \clef "treble" 
             \time 3/4
             \key d \major 
             \key d \major 
             d' 8.  
             fis' 16  
             \bar "|"  %{ end measure 0 %} 
             a' 4  
             a' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             a' 4  
             a' 4  
             \color "red" b' 4  
             \bar "|"  %{ end measure 2 %} 
             \color "red" a' 4.  
             \color "red" g' 8  \fermata  
             fis' 8.  
             fis' 16  
             \bar "|"  %{ end measure 3 %} 
             g' 4  
             fis' 8.  
             fis' 16  
             \color "blue" e' 8.  
             \color "blue" e' 16  
             \bar "|"  %{ end measure 4 %} 
             \color "blue" d' 2  \fermata  
             d' 8.  
             fis' 16  
             \bar "|"  %{ end measure 5 %} 
             a' 8.  
             a' 16  
             a' 4  
             \color "red" b' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "red" a' 4.  
             \color "red" g' 8  \fermata  
             \color "red" fis' 4  
             \bar "|"  %{ end measure 7 %} 
             g' 8.  
             g' 16  
             \color "blue" fis' 4  
             \color "blue" e' 4  
             \bar "|"  %{ end measure 8 %} 
             \color "blue" d' 2  \fermata  
             d' 8.  
             fis' 16  
             \bar "|"  %{ end measure 9 %} 
             a' 4  
             a' 4  
             \color "red" b' 4  
             \bar "|"  %{ end measure 10 %} 
             \color "red" a' 4.  
             \color "red" g' 8  \fermata  
             fis' 8.  
             fis' 16  
             \bar "|"  %{ end measure 11 %} 
             g' 4  
             \color "blue" fis' 4  
             \color "blue" e' 4  
             \bar "|"  %{ end measure 12 %} 
             \color "blue" d' 2  \fermata  
             d' 8.  
             fis' 16  
             \bar "|"  %{ end measure 13 %} 
             a' 4  
             a' 4  
             \color "red" b' 4  
             \bar "|"  %{ end measure 14 %} 
             \color "red" a' 4.  
             \color "red" g' 8  \fermata  
             fis' 8.  
             fis' 16  
             \bar "|"  %{ end measure 15 %} 
             g' 4  
             \color "blue" fis' 4  
             \color "blue" e' 4  
             \bar "|"  %{ end measure 16 %} 
             \color "blue" d' 2  \fermata  
             d' 8.  
             fis' 16  
             \bar "|"  %{ end measure 17 %} 
             a' 4  
             a' 4  
             \color "red" b' 4  
             \bar "|"  %{ end measure 18 %} 
             \color "red" a' 4.  
             \color "red" g' 8  \fermata  
             fis' 8.  
             fis' 16  
             \bar "|"  %{ end measure 19 %} 
             g' 4  
             \color "blue" fis' 4  
             \color "blue" e' 4  
             \bar "|"  %{ end measure 20 %} 
             \time 2/4
             \color "blue" d' 4.  
             a 8  
             \bar "|"  %{ end measure 21 %} 
             d' 16  
             d' 16  
             e' 8  
             fis' 16  
             fis' 16  
             g' 8  
             \bar "|"  %{ end measure 22 %} 
             \color "red" a' 8  
             \color "red" b' 8  
             \color "red" a' 8  \fermata  
             g' 8  
             \bar "|"  %{ end measure 23 %} 
             fis' 4  
             e' 8.  
             e' 16  
             \bar "|"  %{ end measure 24 %} 
             d' 4.  
             \bar "|."  %{ end measure 25 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_5" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "Miss" 
              "rule_12" 
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
              "Miss" 
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
              "Miss" 
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
              "Miss" 
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "A" -- 
              "men,"__ 
              "a" -- 
              "men"__ 
              "wij" 
              "zijn" 
              "hier" 
              "te" -- 
              "za" -- 
              "men"__ 
              "Om" 
              "te" 
              "drin" -- 
              "ken"__ 
              "een" 
              "glaas" -- 
              "je"__ 
              "wijn" 
              "De" 
              " " 
              "bruid" 
              "die" 
              "moet" 
              "be" -- 
              "ta" -- 
              "len"__ 
              "Ge" -- 
              "dron" -- 
              "ken"__ 
              "moet" 
              "er" 
              "zijn" 
              "Dat" 
              "is" 
              "een" -- 
              "maal"__ 
              "ge" -- 
              "dron" -- 
              "ken"__ 
              "Dat" 
              "is" 
              "een" -- 
              " " 
              "maal"__ 
              "Hans." 
              "Dat" 
              "is" 
              "twee" -- 
              "maal"__ 
              "ge" -- 
              "dron" -- 
              "ken"__ 
              "Dat" 
              "is" 
              "twee" -- 
              " " 
              "maal"__ 
              "Hans." 
              "Dat" 
              "is" 
              "drie" -- 
              "maal"__ 
              "ge" -- 
              "dron" -- 
              "ken"__ 
              "Dat" 
              "is" 
              "drie" -- 
              " " 
              "maal"__ 
              "Hans." 
              "Van" 
              "li" -- 
              "de" -- 
              "rom,"__ 
              "la" -- 
              "de" -- 
              "rom,"__ 
              "lo" -- 
              " " 
              "rom"__ 
              "Van" 
              "vi" -- 
              "va"__ 
              "la" 
              "France." 
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
