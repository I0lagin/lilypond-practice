\version "2.24.4"

%%%% MOLA Guidelines for Music Preparation stuff
%%%% #(set-global-staff-size 21.26)
%%%% 21.26: 7.5mm
%%%% 22.67: 8.0mm
%%%% 24.09: 8.5mm

\header
{
  title = "Études"
  composer = "Claude Debussy"
  copyright = "Public Domain"
  tagline = \markup
  {
    \column {
      \center-column {
	\small {
	  \line { "Public Domain • Typeset by Jose Tamad" }
	  \line { \italic "Free to distribute, modify, and perform" }
	}
      }
    }
  }
}  

\paper
{

  #(set-paper-size "a4")
  top-margin = 1.4\cm
  bottom-margin = 1.4\cm
  right-margin = 2\cm
  left-margin = 2\cm
  %% fluc. 1.0-2.0; take RL

  %% personal preference
  #(define fonts
    (set-global-fonts
     #:roman "MLMRoman8, Harano Aji Mincho"
     #:sans "MLMSans8, Harano Aji Gothic"
     #:typewriter "MLMMono8"
     #:factor (/ staff-height pt 20)
   ))
  #(include-special-characters)

  tagline = ##f
  print-all-headers = ##f
  ragged-last = ##t
  
}

\include "piece1/main.ily"
\include "piece2/main.ily"

midiGap = { \tempo 4 = 120 R1 }

\book
{
  
  \score
  {
    \header
    {
      piece = "1. Pour les cinq doigts"
    }
    \mainLayout_A
    \layout
    {
      
    }
  }

  \score
  {
    \header
    {
      piece = "Title 2"
    }
    \mainLayout_B
    \layout
    {
      
    }
  }
  
  %% midi
  \score
  {
    {
      \mainMidi_A
      \midiGap %% insert these inbetween
      \mainMidi_B
    }
    \midi
    {

    }
  }
  
}