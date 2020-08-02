\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB166916_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*4 
             \clef "treble" 
             \time 4/4
             \key bes \major 
             \key bes \major 
             f' 8  
             \bar "|"  %{ end measure 0 %} 
             bes' 4  
             bes' 4  
             bes' 16  
             c'' 16  
             d'' 16  
             ees'' 16  
             f'' 8  
             bes' 8  
             \bar "|"  %{ end measure 1 %} 
             c'' 4  
             c'' 8  
             d'' 16  
             \color "blue" ees'' 16  
             \color "blue" ees'' 8  
             \color "blue" d'' 8  \fermata  
             r 8  
             f' 8  
             \bar "|"  %{ end measure 2 %} 
             bes' 16  
             c'' 16  
             bes' 16  
             c'' 16  
             d'' 16  
             ees'' 16  
             d'' 16  
             ees'' 16  
             f'' 8  
             c'' 8  
             d'' 8  
             c'' 8  
             \bar "|"  %{ end measure 3 %} 
             bes' 8  
             c'' 16  
             d'' 16  
             \color "blue" c'' 8  
             \color "blue" bes' 8  
             \color "blue" a' 4  \fermata  
             r 8  
             f' 8  
             \bar "|"  %{ end measure 4 %} 
             a' 8  
             f' 8  
             c'' 8  
             a' 8  
             f'' 8  
             e'' 16  
             d'' 16  
             c'' 16  
             bes' 16  
             a' 16  
             g' 16  
             \bar "|"  %{ end measure 5 %} 
             f' 4  
             \color "blue" g' 8.  
             \color "blue" f' 16  
             \color "blue" f' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 6 %} 
             bes' 4  
             bes' 8.  
             \color "red" f' 16  
             \color "red" g' 8  
             \color "red" ees' 8  
             r 8  
             bes' 8  
             \bar "|"  %{ end measure 7 %} 
             ees'' 8.  
             d'' 16  
             \color "blue" c'' 8  
             \color "blue" bes' 8  
             \color "blue" a' 4  \fermata  
             r 8  
             c'' 8  
             \bar "|"  %{ end measure 8 %} 
             f'' 4  
             ees'' 4  
             d'' 16  
             bes' 16  
             ees'' 16  
             c'' 16  
             f'' 8  
             ees'' 8  
             \bar "|"  %{ end measure 9 %} 
             d'' 4  
             \color "blue" c'' 8.  
             \color "blue" bes' 16  
             \color "blue" bes' 4  \fermata  
             r 4  
             \bar "|"  %{ end measure 10 %} 
             d'' 4.  
             d'' 8  
             ees'' 8  
             ees'' 8  
             r 8  
             d'' 8  
             \bar "|"  %{ end measure 11 %} 
             ees'' 8.  
             d'' 16  
             c'' 8  
             \color "blue" bes' 8  
             \color "blue" bes' 8  
             \color "blue" a' 8  \fermata  
             r 8  
             c'' 8  
             \bar "|"  %{ end measure 12 %} 
             f'' 4  
             ees'' 4  
             d'' 16  
             bes' 16  
             ees'' 16  
             c'' 16  
             f'' 8  
             ees'' 8  
             \bar "|"  %{ end measure 13 %} 
             d'' 4  
             c'' 8.  
             bes' 16  
             bes' 4  
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
               _  
               _  
               _  
              "rule_8" 
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
              "rule_0" 
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
              "rule_6" 
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
              "rule_0" 
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
              "rule_6" 
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
              "When" 
              "Bri" -- 
              "tain"__ 
              "first" 
              " " 
              " " 
              " " 
              " " 
              "at" 
              "heav'ns" 
              "com" -- 
              " " 
              " " 
              "mand"__ 
              " " 
              "a" -- 
              "rose"__ 
              " " 
              " " 
              " " 
              " " 
              " " 
              " " 
              " " 
              " " 
              "from" 
              "out" 
              "the" 
              "a" -- 
              " " 
              " " 
              "zu" -- 
              "re"__ 
              "main," 
              "a" -- 
              "ro" -- 
              "se,"__ 
              "a" -- 
              "ro" -- 
              "se"__ 
              "from" 
              " " 
              "out" 
              " " 
              "the" 
              " " 
              "a" -- 
              "zu" -- 
              "re"__ 
              "main," 
              "This" 
              "was" 
              "the" 
              "char" -- 
              "ter,"__ 
              "the" 
              "char" -- 
              "ter"__ 
              "of" 
              "the" 
              "land," 
              "And" 
              "guar" -- 
              "dian"__ 
              "an" -- 
              " " 
              " " 
              " " 
              " " 
              "gels"__ 
              "sug" 
              "this" 
              " " 
              "strain:" 
              "Rule" 
              "Bri" -- 
              "tan" -- 
              "nia,"__ 
              "Bri" -- 
              "tan" -- 
              "nia"__ 
              "rule" 
              "the" 
              "waves," 
              " " 
              "For" 
              "Bri" -- 
              "tons"__ 
              "ne" -- 
              " " 
              " " 
              " " 
              " " 
              "ver"__ 
              "will" 
              " " 
              "be" 
              "slaves." 
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
