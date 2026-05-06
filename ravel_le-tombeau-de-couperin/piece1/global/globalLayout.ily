\version "2.26.0"

globalLayout = {

  %%1--4
  \key e \minor
  \time 6,6 12/16
  \tempo \markup { Vif \rhythm { 4.} = 92 } 
  s2.*4 |

  %%5--30 start repeat
  \set Score.repeatCommands = #'(start-repeat)
  s2.*26

  %%31--33 first
  \set Score.repeatCommands = #`((volta ,#{ \markup \volta-number "1." #}))
  \grace { s16 }
  s2.*3
  \grace { s16 }

  %%34--36 second
  \set Score.repeatCommands = #`((volta #f)
				 (volta ,#{ \markup \volta-number "2." #})
				 end-repeat)
  \grace { s16 }
  s2.*3
  \set Score.repeatCommands = #'((volta #f))

  %%37--48
  s2.*12

  %%49--60
  s2.*12

  %% nothing ever happens
  %%61--98
  s2.*37
  \fine

}