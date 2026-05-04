\version "2.24.4"

globalMidi = {

  %%1--4
  \tempo 4=72
  s1*4

  %%5--6
  s4
  \tempo 4=80
  s4
  \tempo 4=90
  s4
  \tempo 4=100
  s4
  \tempo 4=120
  s4
  \tempo 4=136
  s4

  %%7--10
  \tempo 4=152
  s4.*3
  \tempo 4=122
  s8
  \tempo 4=92
  s8
  \tempo 4=72
  s16
  \tempo 4=60
  s16

  %%11--%14
  \tempo 4=72
  s1*4

  %%15--%16
  \tempo 4=80
  s2
  \tempo 4=88
  s2
  \tempo 4=96
  s2
  \tempo 4=104
  s2

  %%17--%24
  \tempo 4=152
  s4.*8

  %%25--%27
  \tempo 4=132
  s4.
  \tempo 4=152
  s8. s8.
  \tempo 4=132
  s4.

  %%28--%29
  \tempo 4=132
  s8.
  \tempo 4=152
  s8. s4. s2.
  
  
  %%30--%31
  \tempo 4=152
  s4.
  \tempo 4=172
  s4.
  \tempo 4=152
  s4.
  \tempo 4=132
  s8
  \tempo 4=112
  s8
  \tempo 4=92
  s16
  \tempo 4=60
  s16

  %%32
  \tempo 4=120
  s4.
  \tempo 4=90
  s8
  \tempo 4=60
  s16
  \tempo 4=72
  s8
  \tempo 4=30
  s16

  %%33
  \tempo 4=120
  s8.
  \tempo 4=140
  s8.
  \tempo 4=120
  s8.
  \tempo 4=90
  s8
  \tempo 4=60
  s16

  %%34
  \tempo 4=120
  s4.
  \tempo 4=90
  s8
  \tempo 4=60
  s16
  \tempo 4=72
  s8
  \tempo 4=20
  s16

  %%35--43
  \tempo 4=168
  s2.*8
  s4. s8. \tuplet 4/3 { s16*3 \tempo 4=60 s16 }

  %%44
  \tempo 4=130
  s8. s16 s16
  \tempo 4=60
  s16
  \tempo 4=80
  s8.
  \tempo 4=60
  s8.

  %%45--47
  \tempo 4=168
  s2.
  \tempo 4=140
  s4. s8. \tuplet 4/3 { s16*3 \tempo 4=60 s16 }
  \tempo 4=120
  s8. s16 s16
  \tempo 4=60
  s16
  \tempo 4=80
  s8.
  \tempo 4=60
  s8
  \tempo 4=20
  s16

  %%48--51
  \tempo 4=120
  s8.
  \tempo 4=144
  s8. s4.
  s2.*3

  %%52--54
  \tempo 4=150
  s2.
  \tempo 4=156
  s2.
  \tempo 4=162
  s4. s8. s8 \tempo 4=60 s16

  %%55
  \tempo 4=144
  s4. s8. s8
  \tempo 4=60
  s16

  %%56--58
  \tempo 4=154
  s2.
  \tempo 4=160
  s2.
  \tempo 4=166
  s4. s8. s8 \tempo 4=60 s16

  %%59--64
  \tempo 4=144
  s2.*4
  \tempo 4=150
  s2.
  \tempo 4=156
  s2.

  %%65--70
  s2.*5
  s4.
  \tempo 4=120 
  s8.
  s8
  \tempo 4=90
  s16
  \tempo 4=40
  
  %%71
  \tempo 4=120
  s8.
  \tempo 4=140
  s8.
  \tempo 4=120
  s8.
  \tempo 4=90
  s8
  \tempo 4=30
  s16

  %%72
  \tempo 4=140
  s4. s8. s8
  \tempo 4=40
  s16 
  
  %%73
  \tempo 4=120
  s8.
  \tempo 4=140
  s8.
  \tempo 4=120
  s8.
  \tempo 4=90
  s8.

  %%74--75
  \tempo 4=140
  s4.
  s8.
  \tempo 4=120
  s8.
  s2.

  %%76--79
  s2.*2
  s4.
  \tempo 4=110
  s8.
  \tempo 4=106
  s16.
  s32.
  \tempo 4=40
  s32.
  \tempo 4=140
  s4.
  s8.
  s16.
  s32.
  \tempo 4=50
  s32.

  %%80--83
  \tempo 4=120
  s2.*2
  s4.
  \tempo 4=110
  s8.
  \tempo 4=106
  s16.
  s32.
  \tempo 4=40
  s32.
  \tempo 4=140
  s4.
  s8.
  s16.
  s32.
  \tempo 4=70
  s32.

  %%84--89
  \tempo 4=132
  s2.
  \tempo 4=136
  s2.
  \tempo 4=140
  s2.
  \tempo 4=144
  s2.
  \tempo 4=148
  s2.
  \tempo 4=152
  s2.

  %%90
  \tempo 4=152
  s2.

  %%91--96
  \tempo 4=120
  s4.
  \tempo 4=124
  s4.
  \tempo 4=128
  s4.
  \tempo 4=132
  s4.
  \tempo 4=136
  s4.
  \tempo 4=140
  s4.
  \tempo 4=144
  s4.
  \tempo 4=148
  s4.
  \tempo 4=152
  s4.
  \tempo 4=156
  s4.
  \tempo 4=160
  s4.
  \tempo 4=164
  s4 s16 s32
  \tempo 4=40
  s32

  %%97--100
  \tempo 4=96
  s2*2
  \tempo 4.=96
  s2.*2

  %%101--104
  \tempo 4=96
  s2*2
  \tempo 4.=96
  s2.*2

  %%105--110
  s2.*5
  s2 s8. s32
  \tempo 4.=10
  s32

  %%111--116
  \tempo 4=96
  s2.*6
}