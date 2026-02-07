\version "2.24.4"

globalLayout = {

  %%1--%3
  \numericTimeSignature
  \time 4/4
  \tempo "Sagement"
  s1*3
  
  %%4--%6
  s1*2
  \time 2/4
  s2
  
  %%7--%11
  \time 6/16
  \tempo \markup { Animé, \concat { mouv {\super t} } de gigue }
  s4.*4
  \bar "||"
  \time 4/4
  \tempo \markup { \concat { I { \super o } } tempo }
  s1
  
  %%12--%14
  s1*3
  
  %%15--%16
  s1*2
  \bar "||"
  
  %%17--%21
  \time 6/16
  \tempo \markup { Animé }
  s4.*5
  
  %%22--%26
  s4.*5
  
  %%27--%29
  s4.
  \time 12/16
  \set Timing.baseMoment = #(ly:make-moment 6/16)
  \set Timing.beatStructure = 1,1,1,1
  s2.*2
  
  %%30--%32
  s2.*2
  \tempo \markup { Rubato }
  s2.
    
  %%33--%34
  \tempo \markup { \concat { Mouv {\super t} } }
  s2.
  \tempo \markup { Molto rubato }
  s2.

  %%35--%37
  \tempo \markup { \concat { Mouv {\super t} } }
  s2.*3
  
  %%38--%39
  s2.*2

  %%40--%42
  s2.*3

  %%43--%45
  s2.
  s4.
  \tempo "rit."
  s4.
  \tempo \markup { \concat { Mouv {\super t} } }
  s2.

  %%46--%47
  s2.
  s4. \tempo "rit." s4.

  %%48--%50
  \key ces \major
  \tempo \markup { \concat { Mouv {\super t} } }
  s2.*3

  %%51--%53
  s2.*3

}