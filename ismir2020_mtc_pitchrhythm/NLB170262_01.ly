\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "NLB170262_01"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \clef "treble" 
             \time 4/4
             \key c \major 
             \key c \major 
             a' 4  
             \bar "|"  %{ end measure 0 %} 
             g' 4.  
             f' 8  
             e' 4  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "blue" g' 4.  
             \color "blue" f' 8  
             \color "blue" e' 2  \fermata  
             \bar "|"  %{ end measure 2 %} 
             f' 8  
             f' 8  
             \color "red" f' 8  
             \color "red" f' 8  
             \color "red" e' 4  
             e' 8  
             e' 8  
             \bar "|"  %{ end measure 3 %} 
             d' 4  
             g' 4  
             c' 4  
             \bar "|."  %{ end measure 4 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
               _  
               _  
               _  
               _  
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
               _  
               } 
             \addlyrics { \set alignBelowContext = #"spinerw"  
              "A" -- 
              "me" -- 
              "ri" -- 
              "ka,"__ 
              "A" -- 
              "me" -- 
              "ri" -- 
              "ka,"__ 
              "drie" -- 
              "maal"__ 
              "in" 
              "het" 
              "rond," 
              "van" 
              "je" 
              "hop" -- 
              "sa" -- 
              "sa."__ 
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
