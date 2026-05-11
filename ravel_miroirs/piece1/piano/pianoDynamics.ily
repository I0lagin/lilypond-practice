\version "2.26.0"

\parallelMusic pianoDynamicsUpper,pianoDynamicsBetween,pianoDynamicsLower,pianoDynamics
{
		 
  %%1--5
  s2.*5 |
  \repeat unfold 2 { s2.\pp\< }
  s4.\< s8.\mf s8.\>
  s4\pp\< s2\>
  s4\< s2\> |
  s2.*5 |
  \repeat unfold 2 { s2\ppp\< s8. s16\mp\> }
  s4.\< s8.\mf s8.\>
  s4\ppp\< s2\mp\>
  s4\< s2\mp\> |

  %% 6--9
  s2.^\> s2.\! s2.*2 |
  s2.\p s4 s2\pp s2.\pp\> s8 s4\ppp |
  s2.*4 |
  s2. s2.\ppp s2.\> s2.\pppp |

}