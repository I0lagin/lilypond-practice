\version "2.26.0"

repeatA = {

  %%5--10
  s2.*6 |
  \once \override DynamicText.self-alignment-X = -1
  s2.\pp\<
  s2.
  \repeat unfold 2 { s4.\!\> s4.\!\< }
  s2.\!\>
  \grace {s16\!} s2.\p |
  s2.*6 |
  s2.\ppp\<
  s2.
  \repeat unfold 2 { s4.\p\> s4.\ppp\< }
  s2.\p\>
  s2.\pp |

  %%11--13
  s2.*3 |
  s2.*3 |
  s2.*3 |
  s2.*3 |

  %%14--21
  s2.*8 |
  s2.\pp s2.*2 s2.\<
  s2.\p s2. s2.\< s2. |
  s2.*8 |
  s2.\ppp s2.*2 s2.\<
  s2.\pp s2. s2.\< s2. |

  %%22--29
  s2.*8 |
  \grace { s16\! } s4.\mp s4.\cresc s2.
  s2. s2. s2.\f\<
  s2. \grace { s16\! } s2.\ff s2.\> |
  s2.*8 |
  s4.\mf s4.\cresc s2.
  s2. s2. s2.\ff\<
  s2. s2.\fff s2.\> |

}

\parallelMusic pianoDynamicsUpper,pianoDynamicsBetween,pianoDynamicsLower,pianoDynamics
{
		 
  %%1--4
  s2.*4 |
  s2.\pp s2.*3 |
  s2.*4 |
  s2.\ppp s2.*3 |

\repeatA

  %%30--33 (volta 1)
  s2.*4 |
  s2.\p s2.*3 |
  s2.*4 |
  s2.\pp s2.*3 |

\tag #'midi \repeatA
  
  %%30, 34--36 (volta 2)
  % hide second 30 from layout
  \tag #'midi s2. s2.*3 |
  \tag #'midi s2.\p s2. s2.\> s2. |
  \tag #'midi s2. s2.*3 |
  \tag #'midi s2.\pp s2. s2.\> s2. |

  %%37--40
  s2.*4 |
  s2.\pp s2.*3 |
  s2.*4 |
  s2.\ppp s2.*3 |

  %41--48
  s2.*6
  s2.^\< s2.\! |
  s2.\p
  s2.*6
  s4 s2\> |
  s2.*8 |
  s2.\pp s2.*5 s2.\< s4\mf s2\> |

  %49--52
  s2.*4 |
  s2. s2.\pp s2.*2 |
  s2.*4 |
  s2. s2.\ppp s2.*2 |

  %53--55
  s2.*3 |
  \once \override DynamicText.self-alignment-X = 3
  s2.\p s2.*2 |
  s2.*3 |
  s2.\pp s2.*2 |

  %56--60
  s2.*2 s2.^\< s2.\! s8. s8.^\> s4. |
  s2.*3 s2.\mf s2. |
  s2.*5 |
  s2.*2 s2.\< s2.\f s8. s8.\> s4. |

  %%61--65
  \override DynamicLineSpanner.Y-offset = #6
  s2.\! s2. s2.^\< s2.^\> s2.\! |
  s2.\pp s2.*4 |
  s2.*5 |
  s2.\pp s2. s2.\< s2.\f\> s2.\pp |

  %%66--70
  s2.*2
  s8.
  \once \override DynamicLineSpanner.Y-offset = #10
  s8.^\< s4 s16 s16\!
  s2.^\> s2.\! |
  s2.\pp s2.*4 |
  s2.*5 |
  s2.\ppp s2. s2.\< s2.\f\> s2.\ppp\< |

  %%71--75
  \revert DynamicLineSpanner.Y-offset
  s2. s2.^\cresc s2.*3 |
  s2.\mp s2.*4 |
  s2.*5 |
  s2.\p s2.\< s2.*3 |

  %%76--80
  s2.*3 s2 s8. s16\ff s2. |
  s2.*5 |
  s2.*5 |
  s2.*4 s2.\fff |

}