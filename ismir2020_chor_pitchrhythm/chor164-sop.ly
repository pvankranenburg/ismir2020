\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor164-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \partial 32*8 
             \clef "treble" 
             \key bes \major 
             \key bes \major 
             \time 3/4
             bes' 4  
             \bar "|"  %{ end measure 0 %} 
             bes' 2  
             a' 4  
             \bar "|"  %{ end measure 1 %} 
             g' 2  
             f' 4  
             \bar "|"  %{ end measure 2 %} 
             \color "blue" bes' 4  
             \color "blue" c'' 2  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" d'' 2  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 4 %} 
             d'' 2  
             d'' 4  
             \bar "|"  %{ end measure 5 %} 
             c'' 2  
             d'' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "blue" ees'' 4  
             \color "blue" d'' 2  
             \bar "|"  %{ end measure 7 %} 
             \color "blue" c'' 2  \fermata  
             bes' 4  
             \bar "|"  %{ end measure 8 %} 
             c'' 2  
             d'' 4  
             \bar "|"  %{ end measure 9 %} 
             c'' 2  
             bes' 4  
             \bar "|"  %{ end measure 10 %} 
             \color "blue" g' 4  
             \color "blue" a' 2  
             \bar "|"  %{ end measure 11 %} 
             \color "blue" bes' 2  \fermata  
             f'' 4  
             \bar "|"  %{ end measure 12 %} 
             \color "red" d'' 2  
             \color "red" bes' 4  
             \bar "|"  %{ end measure 13 %} 
             \color "red" c'' 2  
             ees'' 4  
             \bar "|"  %{ end measure 14 %} 
             d'' 4  
             c'' 2  
             \bar "|"  %{ end measure 15 %} 
             bes' 2  \fermata  
             \bar "||"  %{ end measure 16 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
              "rule_11" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_2" 
               _  
               _  
               _  
              "rule_2" 
               _  
               _  
               _  
               _  
               _  
               _  
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
\layout { indent = 0\cm}
