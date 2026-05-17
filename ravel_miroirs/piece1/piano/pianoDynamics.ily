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
  s2.\p s4 s2\pp s2.\pp\> s8 s8\ppp s2 |
  s2.*4 |
  s2. s2.\ppp s2.\> s2.\pppp |

  %% 10--13
  s2.*3 s4. |
  \repeat unfold 2 { s2.\pp\< }
  s4.\< s4.\f\>
  s4.\mp\> |
  s2.*3 s4. |
  \repeat unfold 2 { s2\ppp\< s8. s16\mp\> }
  s4.\< s4.\ff\>
  s4.\p\> |

  %% 14--15
  \repeat unfold 2 { s4\!^\> s8\! \tuplet 3/2 { s8^\< s8\!^\> s8 } } |
  \repeat unfold 2 { s2\p s8 } |
  \repeat unfold 2 { s2 s8 } |
  \repeat unfold 2 { s4\pp\> s8 s8\ppp\< s8\mf\> } |

  %%16--20
  s2.\! s2. s2 s4^\> s2.\! s2.\! |
  s2.\p\< s2.\mf s2. s2.\pp s8 s8\ppp s2 |
  s2. s2._\> s4. s4._\p |
  s2.\pp\< s2.\f\> s4. s4.\pp s2.\ppp s2.\pppp |

}