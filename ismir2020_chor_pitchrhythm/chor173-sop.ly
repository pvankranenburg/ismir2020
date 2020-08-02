\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor173-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \key ees \major 
             \key ees \major 
             \time 3/4
             bes' 4  
             \color "red" g' 4  
             \color "red" c'' 4  
             \bar "|"  %{ end measure 1 %} 
             \color "red" bes' 2  \fermata  
             ees' 4  
             \bar "|"  %{ end measure 2 %} 
             f' 2  
             g' 4  
             \bar "|"  %{ end measure 3 %} 
             aes' 2  
             \color "red" bes' 4  
             \bar "|"  %{ end measure 4 %} 
             \color "red" g' 4  
             \color "red" ees' 2  \fermata  
             \bar "|"  %{ end measure 5 %} 
             f' 4  
             \color "red" g' 4  
             \color "red" a' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "red" bes' 2  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 7 %} 
             c'' 4  
             d'' 4  
             ees'' 4  
             \bar "|"  %{ end measure 8 %} 
             \color "blue" d'' 4  
             \color "blue" c'' 2  
             \bar "|"  %{ end measure 9 %} 
             \color "blue" bes' 2.  \fermata  
             \bar "|"  %{ end measure 10 %} 
             bes' 4  
             \color "red" b' 4  
             \color "red" b' 4  
             \bar "|"  %{ end measure 11 %} 
             \color "red" c'' 2  \fermata  
             d'' 4  
             \bar "|"  %{ end measure 12 %} 
             ees'' 4.  
             ees'' 8  
             f'' 4  
             \bar "|"  %{ end measure 13 %} 
             \color "red" ees'' 4  
             \color "red" d'' 2  
             \bar "|"  %{ end measure 14 %} 
             \color "red" c'' 2  \fermata  
             bes' 4  
             \bar "|"  %{ end measure 15 %} 
             c'' 4.  
             d'' 8  
             ees'' 4  
             \bar "|"  %{ end measure 16 %} 
             ees'' 2  
             d'' 4  
             \bar "|"  %{ end measure 17 %} 
             ees'' 2.  \fermata  
             \bar "||"  %{ end measure 18 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
               _  
              "Miss" 
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
              "Miss" 
               _  
               _  
               _  
               _  
               _  
               _  
              "rule_9" 
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
