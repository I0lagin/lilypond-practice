\version "2.26.0"

\header
{
  title = "Title"
  composer = "Composer"
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

%% global files should be usable for any arrangement of the same
%% composition

\include "global/globalLayout.ily" %% time, tempo markings, keys, barlines, etc.
\include "global/globalMidi.ily"   %% midi tempo changes

\include "piano/pianoLayout.ily"   %% line/pagebreaks, beam styles, tuplet
				   %% numbers/brackets, etc.
\include "piano/pianoDynamics.ily" %% dynamics & hairpins (+ midi)
\include "piano/pianoNotes.ily"    %% actual notes (purely notes if possible)

%% when a composition includes repeats, consider using tag #'midi

%% voltas, for example:

	% layout: set volta/barlines and go straight to next

	% midi: either put repeated music/global in a separate variable, or copy
	% and paste, then call with \tag #'midi

	% (don't trust \unfoldRepeats. he's a bassist)

mainLayout =
{

  \new PianoStaff \with
  {
    %% instrumentName = \markup { "PIANO" }
    %% \consists "Span_arpeggio_engraver"
    %% \consists "Span_stem_engraver"
  }
  \keepWithTag #'layout
  <<

    \new Staff = "pianoUpper"
    << 
      \globalLayout
      \pianoLayout
      \pianoDynamicsUpper
      \relative { \pianoUpper }
    >>
    
    \new Dynamics
    <<
      \globalLayout
      \pianoLayout
      \pianoDynamicsBetween
    >>
    
    \new Staff = "pianoLower"
    <<
      \globalLayout
      \pianoLayout
      \pianoDynamicsLower
      \pianoPedal
      \relative { \pianoLower }
    >>
  >>

}

mainMidi =
{

  \new PianoStaff \with
  {
    midiInstrument = "acoustic grand"
    midiMaximumVolume = 1.0
    midiMinimumVolume = 0.0
    \accepts Dynamics
    \consists "Dynamic_performer"
  }
  \keepWithTag #'midi
  <<
    \globalMidi
    
    \new Staff = "pianoUpper"
    <<
      \relative \pianoUpper
      \pianoDynamics
      \pianoPedal
    >>
    
    \new Staff = "pianoLower"
    <<
      \relative \pianoLower
      \pianoDynamics
      \pianoPedal
    >>
  >>

}

\score
{ 
  << \mainLayout >> %% brackets just in case of ly2video (it inserts
		    %% `\unfoldRepeats` after `\score` but doesn't add
		    %% any brackets)
  \layout
  {
    
  }
}

\score {
  << \mainMidi >>
  \midi
  { 
    \context {
      \Score midiChannelMapping = #'instrument
    }
  }
}