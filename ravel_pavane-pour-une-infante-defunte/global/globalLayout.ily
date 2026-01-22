\version "2.24.4"

globalLayout = {

  %%1
  \tempo \markup {Assez doux, mais d'une sonorité large} 4=80
  s1 |

  %%2-3
  s1*2

  %%4-6
  
  s1*3

  %%7
  
  s1
  
  %%8
  \tempo \markup {En mesure} s1

  %%9
  s1

  %%10
  
  s1

  %%11
  s4
  \tempo \markup { \raise #3 { En élargissant } {　} } s2.

  %%12
  s2 \tempo \markup { \concat { 1 \super er } Mouvement } s2

  %%13
  \bar "||"
  \tempo \markup { Trés lointain }
  s1

  %%14-15
  s1*2

  %%16
  
  s1

  %%17-18
  s1*2

  %%19
  \bar "||"
  \time 2/4
  s2

  %%20
  \bar "||"
  \time 4/4
  s1

  %%21-27
  s1*7

  %%28
  \bar "||"
  \tempo \markup { Reprenez le mouvement }
  s1

  %%29-34
  s1*6

  %%35
  \tempo \markup { En mesure }
  s1

  %%36%37
  s1*2

  %%38
  s4
  \tempo \markup {Large}
  s2.

  %%39
  s1

  %%40
  \bar "||"
  \tempo \markup { \concat { 1 \super er } Mouvement. } s1

  %%41-48
  s1*7 s2 \tempo \markup { Très grave } s2

  %%49
  \time 2/4 s2

  %%50
  \time 4/4 s1

  %%51
  \once \omit Staff.TimeSignature
  \time 4,1,4 9/8 s1*9/8

  %%52-54
  \once \omit Staff.TimeSignature
  \time 4/4 s1*3

  %%55
  \once \omit Staff.TimeSignature
  \time 4,1,4 9/8 s1*9/8

  %%56-58
  \once \omit Staff.TimeSignature
  \time 4/4 s1*3
  
  %%59
  \time 2/4 s2

  %%60-61
  \time 4/4
  \tempo \markup { \concat { 1 \super er } Mouvement. } s1 s1
  

}