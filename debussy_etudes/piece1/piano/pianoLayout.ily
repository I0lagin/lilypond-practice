\version "2.24.4"

%% linebreaks

mBreak = { \break }

pBreak = { \pageBreak }

%% beam subdivisions

divtwo =
{
  \set subdivideBeams = ##t 
  \set baseMoment = #(ly:make-moment 1/2) 
  \set beatStructure = 1,1
}

divfour =
{ 
  \set subdivideBeams = ##t 
  \set baseMoment = #(ly:make-moment 1/4) 
  \set beatStructure = 1,1,1,1
}

diveight =
{ 
  \set subdivideBeams = ##t 
  \set baseMoment = #(ly:make-moment 1/8) 
  \set beatStructure = 2,2,2,2
}

divsixteen =
{ 
  \set subdivideBeams = ##t 
  \set baseMoment = #(ly:make-moment 1/16) 
  \set beatStructure = 4,4,4,4
}

diveightdot =
{ 
  \set subdivideBeams = ##t 
  \set baseMoment = #(ly:make-moment 3/16)
  \set beatStructure = 3,3,3,3
}

divOne =
{
  \set stemLeftBeamCount = 2
  \set stemRightBeamCount = 1
}

divTwo =
{
  \set stemLeftBeamCount = 1
  \set stemRightBeamCount = 2
}

pianoLayout =
{

  %% comment out when done transcripting
  \autoBreaksOff
  \set Staff.pedalSustainStyle = #'bracket
  \accidentalStyle piano-cautionary
  
  \set PianoStaff.connectArpeggios = ##t
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  
  %%1--%3
  s1*3
  \mBreak

  %%4--%6
  s1*2
  s2
  \mBreak

  %%7--%11
  s4.*4
  s1
  \mBreak

  %%12--%14
  s1*3
  \mBreak

  %%15--%16
  s1*2
  \pBreak

  %%17--%21
  s4.*5
  \mBreak

  %%22--%26
  s4.*5
  \mBreak

  %%27--%29
  s4.
  s8.
  s8.
  s8.
  s8.
  s2.
  \mBreak

  %%30--%32
  s2.*2
  s2.
  \mBreak
  
  %%33--%34
  s2.
  s2.
  \pBreak

  %%35--%37
  s2.*3
  \mBreak

  %%38--%39
  s2.*2
  \mBreak

  %%40--%42
  s2.*3
  \mBreak

  %%43--%45
  s2.
  s4.
  s4.
  s2.
  \mBreak

  %%46--%47
  s2.
  s2.
  \pBreak

  %%48--%50
  s2.*3
  \mBreak

  %%51--%53
  s2.*3
  \mBreak
  
}