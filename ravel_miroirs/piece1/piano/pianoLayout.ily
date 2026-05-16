\version "2.26.0"

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

pianoLayout =
{

  %% comment out when done transcripting

  \autoBreaksOff
  \accidentalStyle piano-cautionary
  \set Staff.pedalSustainStyle = #'bracket
  
  \set PianoStaff.connectArpeggios = ##t
  
  %%1--2
  s2.*2
  \mBreak

  %% 3--4
  s2.*2
  \mBreak

  %% 5--6
  s2.*2
  \mBreak

  %% 7--9
  s2.*3
  \pBreak

  %% 10--12
  s2.*3
  \mBreak

  %% 13--15
  s4.
  s2 s8
  s2 s8
  \mBreak

  %% 16--17
  s2.*2
  \mBreak

  %% 18--19
  s2.*2
  \mBreak

  %% 20-22
  s2.
  s2*2
  \pBreak
  
}