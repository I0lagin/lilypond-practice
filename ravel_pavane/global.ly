\version "2.24.4"

global = {

	\autoBreaksOff
  \key g \major
  \time 4/4
  \tag #'layout \tempo "Assez doux, mais d'une sonorité large"

	%1
	\tag #'midi \tempo 4=48
	s8
	\tag #'midi \pp
	\tag #'midi \tempo 4=54
	s8
	s4
	s4
	s4 |

	%2
	s2. 
	\tag #'midi \tempo 4=48
	s4 |

	%3-5
	\tag #'midi \tempo 4=54
	s1*3 |

	%6
	s2 s8
	\tag #'midi \tempo 4=51
	s4.
	\tag #'midi \f
	|


	%7
	s4
	\tag #'midi \>
	\tag #'midi \tempo 4=44
	s2
	s8
	\tag #'midi \tempo 4=18
	s8 |


	%8
	\tag #'midi \tempo 4=36
	\tag #'layout \tempo "En mesure"
	s8 \tag #'midi \pp
	\tag #'midi \tempo 4=54
	s4.
	s2
	|

	%9
	s1 |

	%10
	s2
	\tag #'midi \tempo 4=48
	s4.
	\tag #'midi \ppp
	\tag #'midi \tempo 4=44
	s8 |

	%11
	s8
	s8
	\tag #'midi \ff
	\tag #'layout \tempo "En élargissant"
	\tag #'midi \tempo 4=48
	s8
	\tag #'midi \tempo 4=44
	s8
	\tag #'midi \tempo 4=36
	s4
	s8
	\tag #'midi \tempo 4=33
	s8 |

	%12
	\tag #'midi \tempo 4=30
	s2 
	\tag #'layout \primer
	\tag #'midi \tempo 4=48
	s4 \tag #'midi \pp
	\tag #'midi \tempo 4=54
	s8
	\tag #'midi \tempo 4=48
	s8 |

	%13
	\tag #'midi \tempo 4=48
	\tag #'layout \tempo \markup { \bold "Très lontain" }
	s1
	\tag #'midi \ppp
	|

	%14-16
	s1*3

	%17
	s2
	s4 \tag #'midi \<
	\tag #'midi \tempo 4=48
	s8
	\tag #'midi \tempo 4=46
	s8
	
	%18
	\tag #'midi \tempo 4=42
	s2 \tag #'midi \f
	\tag #'midi \tempo 4=46
	s2

	%19
	\tag #'midi \tempo 4=42
	s4 \tag #'midi \>
	\tag #'midi \tempo 4=36
	s4

	%20
	\tag #'midi \tempo 4=44
	s8 \tag #'midi \pppp
	\tag #'midi \tempo 4=48
	s8
	s2.

	%21-23
	s1*3

	%24
	s2. \tag #'midi \<
	\tag #'midi \tempo 4=44
	s8
	\tag #'midi \tempo 4=40
	s8

	% 25
	\tag #'midi \tempo 4=36
	s4
	s4 \tag #'midi \f
	\tag #'midi \tempo 4=48
	s8
	\tag #'midi \tempo 4=52
	s4
	\tag #'midi \tempo 4=44
	s8

	% 26
	\tag #'midi \tempo 4=36
	s4
	\tag #'midi \tempo 4=33
	s4
	s2 \tag #'midi \ff

	% 27
	s8
	\tag #'midi \tempo 4=44
	s8
	\tag #'midi \tempo 4=48
	s8
	\tag #'midi \tempo 4=36
	s8
	\tag #'midi \tempo 4=36
	s8 \tag #'midi \>
	s8
	s8
	s8

	%28
	\tag #'layout \tempo "Reprenez le mouvement"
	\tag #'midi \tempo 4=16
	s16 \tag #'midi \pp
	\tag #'midi \tempo 4=36
	s16
	\tag #'midi \tempo 4=44
	s8
	\tag #'midi \tempo 4=48
	s4
	s2

	%29-32
	s1*4

	%33
	s2
	s8
	s8 \tag #'midi \f
	s8
	\tag #'midi \tempo 4=44
	s8

	%34
	\tag #'midi \tempo 4=30
	s4
	s4 \tag #'midi \>
	\tag #'midi \tempo 4=36
	s4
	s8
	\tag #'midi \tempo 4=16
	s8 |

	%35
	\tag #'layout \tempo \markup { "En mesure" }
	\tag #'midi \tempo 4=44
	s8 \tag #'midi \pp
	\tag #'midi \tempo 4=52
	s4. s2 |

	%36
	s1

	%37
	s2 \tag #'midi \>
	s8 \tag #'midi \ppp
	\tag #'midi \tempo 4=48
	s8
	s8
	\tag #'midi \tempo 4=44
	s8

	%38
	\tag #'midi \tempo 4=36
	s8 
	\tag #'midi \tempo 4=38
	s8 \tag #'midi \fff
	\tag #'layout \tempo \markup { "Large" }
	\tag #'midi \tempo 4=44
	s8
	s8
	\tag #'midi \tempo 4=30
	s4
	\tag #'midi \tempo 4=48
	s8.
	\tag #'midi \tempo 4=36
	s16 |

	%39
	\tag #'midi \tempo 4=60
	s2
	\tag #'midi \tempo 4=36
	s4
	s8
	\tag #'midi \tempo 4=52
	s8 \tag #'midi \ppp

	%40
	\tag #'layout \primer
	\tag #'midi \tempo 4=63
	s2 \tag #'midi \<
  s2 
  \tag #'midi \p
  \tag #'midi \>

	%41
	s4
	\tag #'midi \tempo 4=52
  s8 \tag #'midi \ppp
	s4.
	\tag #'midi \tempo 4=56
	s4|

	%42
	\tag #'midi \tempo 4=60
	s4 \tag #'midi \<
  s4 \tag #'midi \mf
	\tag #'midi \tempo 4=48
	s4
	\tag #'midi \tempo 4=52
	s4
  \tag #'midi \<
  |

	%43
	\tag #'midi \tempo 4=56
	s4 \tag #'midi \f \tag #'midi \>
	\tag #'midi \tempo 4=44
	s4
	\tag #'midi \tempo 4=48
	s4 \tag #'midi \p
	\tag #'midi \tempo 4=56
	s8
	s8 
	\tag #'midi \ppp
  \tag #'midi \<
	|

	%44
	\tag #'layout \primer
	\tag #'midi \tempo 4=63
	s2
  s2 \tag #'midi \mf \tag #'midi \> |

	%45
	s4
	\tag #'midi \tempo 4=52
	s8 \tag #'midi \pp
  s4. \tag #'midi \f
	\tag #'midi \tempo 4=56
	s4|

	%46
	\tag #'midi \tempo 4=60
	s4 \tag #'midi \<
  s4 \tag #'midi \ff
	\tag #'midi \tempo 4=48
	s4 \tag #'midi \<
	\tag #'midi \tempo 4=52
	s4|

	%47
	\tag #'midi \tempo 4=56
	s4 \tag #'midi \sf
	s4
	\tag #'midi \tempo 4=52
	s4 \tag #'midi \>
	s8
	s8 
	|

	%48
	s2 
  s4
  \tag #'layout \tempo \markup { "Très grave" }
  \tag #'midi \tempo 4=38
  s8 \tag #'midi \pp
  s8  
	
	%49
	s4.
	\tag #'midi \tempo 4=52
  s8
  \tag #'midi \pp

  %50
	\tag #'midi \tempo 4=63
	s2
  s16.
  \tag #'midi \>
  \tag #'midi \tempo 4=24
  s32
  \tag #'midi \tempo 4=56
  s8
  s4

	%51
	s4
  \tag #'midi \ppp
	\tag #'midi \tempo 4=52
	s32
  \tag #'midi \tempo 4=18
  s16.
  \tag #'midi \p
	\tag #'midi \tempo 4=48
  s8
	\tag #'midi \tempo 4=56
	s4
  s4
  |

	%52
	\tag #'midi \tempo 4=60
	s4
  \tag #'midi \<
  s4
  \tag #'midi \mf
	\tag #'midi \tempo 4=48
	s4
	\tag #'midi \tempo 4=52
	s4
  \tag #'midi \<
  |

	%53
	\tag #'midi \tempo 4=56
	s4
  \tag #'midi \f
	\tag #'midi \tempo 4=44
	s4
	\tag #'midi \tempo 4=48
	s4
	\tag #'midi \tempo 4=56
	s8
	s8 
	\tag #'midi \pp
	|

  %54
	\tag #'midi \tempo 4=63
	s2
  s16
  \tag #'midi \tempo 4=44
  s8.
  \tag #'midi \tempo 4=60
  s4 |

	%55
	s4
	\tag #'midi \tempo 4=52
	s8
  s32 \tag #'midi \f
  \tag #'midi \tempo 4=24
  s16.
  \tag #'midi \tempo 4=52
  s4
	\tag #'midi \tempo 4=56
	s4|

	%56
	\tag #'midi \tempo 4=60
	s4 \tag #'midi \<
  s4 \tag #'midi \ff
	\tag #'midi \tempo 4=48
	s4 \tag #'midi \<
	\tag #'midi \tempo 4=52
	s4|

	%57
	\tag #'midi \tempo 4=56
	s4 \tag #'midi \sf
	s4
	\tag #'midi \tempo 4=52
	s4 \tag #'midi \>
	s8
	s8 
	|

	%58
	s2 
  s4
  \tag #'layout \tempo \markup { "Très grave" }
  \tag #'midi \tempo 4=38
  s8 \tag #'midi \pp
  s8  
	
	%59
	s4.
	\tag #'midi \tempo 4=20
  s8

	%60
  \tag #'layout \primer
	\tag #'midi \tempo 4=36
  s16
  \tag #'midi \tempo 4=40
  s16
  \tag #'midi \tempo 4=44
  s16
  \tag #'midi \tempo 4=48
  s16
  \tag #'midi \tempo 4=52
  s2.

	%61-64
	s1*4 | 

  %65
	s2
	s8
	s8
	s8
	\tag #'midi \tempo 4=44
	s8

	%66
	\tag #'midi \tempo 4=30
	s4
	s4 \tag #'midi \>
	\tag #'midi \tempo 4=36
	s4
	s8
	\tag #'midi \tempo 4=16
	s8 |

	%67
	\tag #'layout \tempo \markup { "Reprenez le mouvement" } 
	\tag #'midi \tempo 4=44
	s8 \tag #'midi \ppp
	\tag #'midi \tempo 4=52
	s4. s2 |

	%68-69
  s1
  s2 s2 \tag #'midi \< 
	
  %70
	\tag #'midi \tempo 4=30
	s8 
  \tag #'layout \tempo \markup { "En élargissant beaucoup" }
  \tag #'midi \tempo 4=44
  s8 \tag #'midi \ff
  s8
  s8
  \tag #'midi \tempo 4=30
  s8
  s8
  \tag #'midi \tempo 4=36
  s8
  s16
  \tag #'midi \tempo 4=12
  s16

	%71
  \tag #'midi \tempo 4=30
	s2
  \tag #'midi \tempo 4=24
  s4.
  \tag #'midi \tempo 4=12
  s8

	%72
	s1 \fine 

}