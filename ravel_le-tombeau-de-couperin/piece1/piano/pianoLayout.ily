\version "2.26.0"

%% linebreaks
% dumped in some graces considering how much they appear and cause trouble
mBreak = { \break \grace {s16} }

pBreak = { \pageBreak \grace {s16} }

pianoLayout =
{

  %% comment out when done transcripting
  \autoBreaksOff
  % \accidentalStyle piano-cautionary
  \accidentalStyle piano
  \set Staff.pedalSustainStyle = #'bracket
  \set PianoStaff.connectArpeggios = ##t
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  
  %% See measure 53. Some weird stuff going on
  \override Score.StaffSymbol.layer = 4
  \override Score.LedgerLineSpanner.layer = 4 
  \override Staff.Clef.layer = 3

  %%1--3
  s2.*3
  \mBreak

  %%4--7
  s2.
  s2.*3
  \mBreak

  %%8--10
  s2.*3
  \mBreak

  %%11-13
  s2.*3
  \mBreak

  %%14--17
  s2.*4
  \pBreak

  %%18--20
  s2.*3
  \mBreak

  %%21--23
  s2.*3
  \mBreak

  %%24--26
  s2.*3
  \mBreak
  
  %%27--30
  s2.*4
  \mBreak

  %%31--33
  s2.*3
  \mBreak

  %%34--36
  s2.*3
  \pBreak

  %%37--39
  s2.*3
  \mBreak
  
  %%40--42
  s2.*3
  \mBreak
  
  %%43--45
  s2.*3
  \mBreak

  %%46--49
  s2.*4
  \mBreak

  %%50--52
  s2.*3
  \mBreak

  %%53--55
  s2.*3
  \pBreak

  %%56--58
  s2.*3
  \mBreak

  %%59--61
  s2.*3
  \mBreak

  %%62--65
  s2.*4
  \mBreak

  %%65--68
  s2.*3
  \mBreak

  %%68--71
  s2.*3
  \mBreak

  %%71--74
  s2.*3
  \pBreak

}