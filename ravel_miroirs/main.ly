\version "2.26.0"

\header
{
  title = "Miroirs"
  composer = "Maurice Ravel"
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

  %% personal preference, comment if unnecessary
  property-defaults.fonts.serif = "Century Schoolbook, BIZ UDP Mincho"
  property-defaults.fonts.sans = "Atkinson Hyperlegible Next, BIZ UDP Gothic"
  property-defaults.fonts.typewriter = "Mint Mono"
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
      piece = "1. Noctuelles"
    }
    \mainLayout_A
    \layout { }
  }

  % \score
  % {
  %   \header
  %   {
  %     piece = "Title 2"
  %   }
  %   \mainLayout_B
  %   \layout { }
  % }
  
  %% midi
  \score
  {
    {
      \mainMidi_A
      % \midiGap %% insert these inbetween
      % \mainMidi_B
    }
    \midi { }
  }
}