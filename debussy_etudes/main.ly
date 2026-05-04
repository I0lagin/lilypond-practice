\version "2.26.0"

%% MOLA Guidelines for Music Preparation stuff
% #(set-global-staff-size 21.26)
%% 21.26: 7.5mm
%% 22.67: 8.0mm
%% 24.09: 8.5mm

\header
{
  title = "Douze Études pour piano"
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
% \include "piece2/main.ily"

midiGap = { \tempo 4 = 120 R1 }

\book
{
  \score
  {
    \header
    {
      piece = "1. Pour les «cinq doigts» ・ d'apres monsieur Czerny"
    }
    \mainLayout_A
    \layout
    {
      
    }
  }

  % \score
  % {
  %   \header
  %   {
  %     piece = "Title 2"
  %   }
  %   \mainLayout_B
  %   \layout
  %   {
      
  %   }
  % }
  
  %% midi
  \score
  {
    {
      \mainMidi_A
      % \midiGap %% insert these inbetween
      % \mainMidi_B
    }
    \midi
    {

    }
  }
  
}