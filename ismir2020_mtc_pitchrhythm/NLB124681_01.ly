\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB124681_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \time 3/4
             \key f \major 
             \key d \minor 
             a' 2  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             d'' 2  
             d'' 4  
             \bar "|"  %{ end measure 2 %} 
             e'' 2  
             \color "red" d'' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "red" cis'' 2  
             \color "red" b' 4  \fermata  
             \bar "|"  %{ end measure 4 %} 
             a' 2  
             b' 4  
             \bar "|"  %{ end measure 5 %} 
             cis'' 2  
             d'' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" cis'' 2  
             \color "blue" b' 4  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" a' 2.  \fermata  
             \bar "|"  %{ end measure 8 %} 
             a' 2  
             a' 4  
             \bar "|"  %{ end measure 9 %} 
             d'' 2  
             d'' 4  
             \bar "|"  %{ end measure 10 %} 
             e'' 2  
             \color "red" d'' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "red" cis'' 2  
             \color "red" b' 4  \fermata  
             \bar "|"  %{ end measure 12 %} 
             a' 2  
             b' 4  
             \bar "|"  %{ end measure 13 %} 
             cis'' 2  
             d'' 4  
             \bar "|"  %{ end measure 14 %} 
             \color "blue" cis'' 2  
             \color "blue" b' 4  
             \bar "|"  %{ end measure 15 %} 
             \color "blue" a' 2.  \fermata  
             \bar "|"  %{ end measure 16 %} 
             a' 2  
             a' 4  
             \bar "|"  %{ end measure 17 %} 
             a' 2  
             g' 4  
             \bar "|"  %{ end measure 18 %} 
             \color "blue" f' 2  
             \color "blue" a' 4  
             \bar "|"  %{ end measure 19 %} 
             \color "blue" c'' 2.  \fermata  
             \bar "|"  %{ end measure 20 %} 
             c'' 2  
             c'' 4  
             \bar "|"  %{ end measure 21 %} 
             d'' 2  
             d'' 4  
             \bar "|"  %{ end measure 22 %} 
             a' 2  
             \color "red" g' 4  
             \bar "|"  %{ end measure 23 %} 
             \color "red" f' 2  
             \color "red" e' 4  \fermata  
             \bar "|"  %{ end measure 24 %} 
             d' 2  
             e' 4  
             \bar "|"  %{ end measure 25 %} 
             f' 2  
             g' 4  
             \bar "|"  %{ end measure 26 %} 
             a' 2  
             \color "red" g' 4  
             \bar "|"  %{ end measure 27 %} 
             \color "red" f' 2  
             \color "red" e' 4  \fermata  
             \bar "|"  %{ end measure 28 %} 
             d' 2  
             e' 4  
             \bar "|"  %{ end measure 29 %} 
             f' 2  
             g' 4  
             \bar "|"  %{ end measure 30 %} 
             a' 2  
             \color "red" g' 4  
             \bar "|"  %{ end measure 31 %} 
             \color "red" f' 2  
             \color "red" e' 4  \fermata  
             \bar "|"  %{ end measure 32 %} 
             d' 2  
             e' 4  
             \bar "|"  %{ end measure 33 %} 
             f' 2  
             e' 4  
             \bar "|"  %{ end measure 34 %} 
             \color "blue" f' 2  
             \color "blue" g' 4  
             \bar "|"  %{ end measure 35 %} 
             \color "blue" a' 2.  \fermata  
             \bar "|"  %{ end measure 36 %} 
             a' 2  
             b' 4  
             \bar "|"  %{ end measure 37 %} 
             cis'' 2  
             d'' 4  
             \bar "|"  %{ end measure 38 %} 
             d'' 2  
             cis'' 4  
             \bar "|"  %{ end measure 39 %} 
             d'' 2.  
             \bar "|."  %{ end measure 40 %} 
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
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "We" -- 
              "duw" -- 
              "vrouw" -- 
              "tjes"__ 
              "al" -- 
              "te" -- 
              "ma" -- 
              "le,"__ 
              "stelt" 
              "uw'" 
              "droef" -- 
              "heid"__ 
              "aan" 
              "den" 
              "kant." 
              "Ik" 
              "zal" 
              "u" 
              "wat" 
              "gaan" 
              "ver" -- 
              "ha" -- 
              "len"__ 
              "ge" -- 
              "schied"__ 
              "in" 
              "het" 
              "Vlaan" -- 
              "der" -- 
              "land,"__ 
              "van" 
              "een'" 
              "we" -- 
              "duw" -- 
              "vrouw,"__ 
              "he" -- 
              "las!"__ 
              "die" 
              "haar" 
              "man" 
              "ge" -- 
              "stor" -- 
              "ven"__ 
              "was" 
              " " 
              "ze" -- 
              "ven"__ 
              "we" -- 
              "ken"__ 
              "en" 
              "drie" 
              "da" -- 
              "gen."__ 
              "Hoort" 
              "eens" 
              "hoe" 
              "al" -- 
              "daar"__ 
              "kwam" 
              "vra" -- 
              "gen"__ 
              "een" 
              "schoen" -- 
              "ma" -- 
              "ker"__ 
              "naar" 
              "lo" -- 
              "gist,"__ 
              "die" 
              "kwam" 
              "rei" -- 
              "zen"__ 
              "van" 
              "Pa" -- 
              "rijs."__ 
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
