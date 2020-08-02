\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB073672_03"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*24 
             \clef "treble" 
             \time 6/4
             \key g \major 
             \key g \major 
             d' 4  
             g' 4  
             a' 4  
             \bar "|"  %{ end measure 0 %} 
             \time 5/4
             b' 2  
             a' 4  
             \color "red" g' 4  
             \color "red" a' 4  
             \bar "|"  %{ end measure 1 %} 
             \time 6/4
             \color "red" b' 2.  \fermata  
             b' 8  
             b' 8  
             b' 4  
             \color "red" b' 8  
             \color "red" a' 8  
             \bar "|"  %{ end measure 2 %} 
             \time 5/4
             \color "red" g' 2  
             d' 4  
             \color "red" g' 4  
             \color "red" a' 4  
             \bar "|"  %{ end measure 3 %} 
             \time 6/4
             \color "red" b' 2  \fermata  
             b' 4  
             b' 4  
             b' 4  
             a' 4  
             \bar "|"  %{ end measure 4 %} 
             g' 4  
             b' 4  
             d'' 4  
             d'' 4  
             c'' 4  
             \color "blue" b' 4  
             \bar "|"  %{ end measure 5 %} 
             \color "blue" b' 8  
             \color "blue" a' 8  ~  
             \color "blue" a' 2  \fermata  
             a' 8  
             b' 8  
             c'' 4  
             b' 4  
             \bar "|"  %{ end measure 6 %} 
             a' 2  
             g' 8  
             a' 8  
             b' 2  
             fis' 8  
             a' 8  
             \bar "|"  %{ end measure 7 %} 
             a' 8  
             g' 8  ~  
             g' 2  
             \bar "|."  %{ end measure 8 %} 
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
              "rule_16" 
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
               _  
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "Mijn" 
              "doch" -- 
              "ter"__ 
              "die" 
              "is" 
              "ern" -- 
              "stig"__ 
              "ziek" 
              "Van" -- 
              "af"__ 
              "haar" 
              "slaap" -- 
              " " 
              "ka" -- 
              "mer"__ 
              "komt" 
              "zij" 
              "niet" 
              "Zij" 
              "heeft" 
              "er" 
              "zo" -- 
              "waar"__ 
              "een" 
              "klein" 
              "kind" -- 
              "je"__ 
              "ont" -- 
              "van" -- 
              "gen"__ 
              "en" 
              "zij" 
              "weet" 
              "er" 
              "van" 
              "geen" 
              " " 
              "scho" -- 
              "ne"__ 
              "jonk" -- 
              "man" -- 
              "ne"__ 
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
