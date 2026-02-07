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

pianoLayout =
{

  %% comment out when done transcripting
  \autoBreaksOff
  \accidentalStyle piano-cautionary
  
  \set PianoStaff.connectArpeggios = ##t
  
  %%1
  s1 | 
  
}