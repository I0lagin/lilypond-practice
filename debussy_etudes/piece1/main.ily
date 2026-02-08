\version "2.24.4"

%%%% MOLA Guidelines for Music Preparation stuff
%%%% #(set-global-staff-size 21.26)
%%%% 21.26: 7.5mm
%%%% 22.67: 8.0mm
%%%% 24.09: 8.5mm

%% global files should be usable for any arrangement of the same
%% composition

\include "global/globalLayout.ily" %% time, tempo markings, keys,
				   %% barlines, etc.
\include "global/globalMidi.ily"   %% midi tempo changes

\include "piano/pianoLayout.ily"   %% line/pagebreaks, beam styles,
				   %% tuplet numbers/brackets, etc.
\include "piano/pianoDynamics.ily" %% dynamics & hairpins (+ midi)
\include "piano/pianoNotes.ily"    %% actual notes (purely notes if
				   %% possible)

%% when a composition includes repeats, consider using tag #'midi

%% voltas, for example:

				%layout: set volta/barlines and go
				% straight to next

				%midi: either put repeated
				% music/global in a separate variable,
				% or copy and paste, then call with
				% \tag #'midi

%% (don't trust \unfoldRepeats. he's a bassist)

mainLayout_A =
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

mainMidi_A =
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