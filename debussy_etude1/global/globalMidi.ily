\version "2.24.4"

accelerando =
#(define-music-function (start-temp increment durations) (number? number? list?)
   (make-sequential-music
    (map (lambda (dur)
           (begin
            (set! start-temp (+ start-temp increment))
            #{ \tempo 4 = #start-temp s #dur #}))
     durations)))
%% \accelerando #72 #8 #'(4 4 2 2 2)

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

  %%48--
  \tempo 4=120
  s8.
  \tempo 4=144
  s8. s4.
  s2.
  
  
}