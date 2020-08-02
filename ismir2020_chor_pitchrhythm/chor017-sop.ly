\version "2.19" 
\include "lilypond-book-preamble.ly"
    
color = #(define-music-function (parser location color) (string?) #{
        \once \override NoteHead #'color = #(x11-color color)
        \once \override Stem #'color = #(x11-color color)
        \once \override Rest #'color = #(x11-color color)
        \once \override Beam #'color = #(x11-color color)
     #})
    
\header { 
 title = "chor017-sop"   
  
  } 
 
\score  { 
 
      << \new Staff  = spinerw { \clef "treble" 
             \key g \major 
             \key e \minor 
             \time 3/4
             e' 4  
             e' 4  
             e' 4  
             \bar "|"  %{ end measure 1 %} 
             b' 2  
             cis'' 4  
             \bar "|"  %{ end measure 2 %} 
             d'' 4  
             \color "blue" cis'' 4  
             \color "blue" b' 4  
             \bar "|"  %{ end measure 3 %} 
             \color "blue" a' 2.  \fermata  
             \bar "|"  %{ end measure 4 %} 
             b' 4  
             cis'' 4  
             dis'' 4  
             \bar "|"  %{ end measure 5 %} 
             e'' 2  
             b' 4  
             \bar "|"  %{ end measure 6 %} 
             \color "red" d'' 4  
             \color "red" cis'' 2  
             \bar "|"  %{ end measure 7 %} 
             \color "red" b' 2  \fermata  
             \color "red" b' 4  
             \bar "|"  %{ end measure 8 %} 
             d'' 4  
             c'' 4  
             b' 4  
             \bar "|"  %{ end measure 9 %} 
             a' 4  
             g' 4  
             fis' 4  
             \bar "|"  %{ end measure 10 %} 
             \color "red" g' 4  
             \color "red" e' 2  
             \bar "|"  %{ end measure 11 %} 
             \color "red" d' 2  \fermata  
             \color "red" d' 4  
             \bar "|"  %{ end measure 12 %} 
             g' 2  
             a' 4  
             \bar "|"  %{ end measure 13 %} 
             b' 2  
             a' 4  
             \bar "|"  %{ end measure 14 %} 
             \color "red" g' 4  
             \color "red" d'' 2  
             \bar "|"  %{ end measure 15 %} 
             \color "red" b' 2  \fermata  
             a' 4  
             \bar "|"  %{ end measure 16 %} 
             g' 4  
             fis' 2  
             \bar "|"  %{ end measure 17 %} 
             e' 2.  \fermata  
             \bar "||"  %{ end measure 18 %} 
              } 
            
\addlyrics { \set alignBelowContext = #"spinerw"  
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
               _  
               _  
               _  
               _  
              "Miss" 
              "rule_2" 
               _  
               _  
               _  
               _  
               _  
               _  
               _  
               _  
              "Miss" 
              "rule_2" 
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
