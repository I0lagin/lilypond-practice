\version "2.26.0"

globalLayout = {

  %%1--9
  \time 3/4
  \key des \major
  \tempo \markup { Très léger (\rhythm {4} = 128 environ) }  
  s2.*9 |

  %%10--12
  s2.*3

  %%13
  \time 2,1 3/8
  s4.

  %%14--15
  \time 2,3 5/8
  s2 s8
  s2 s8

  %%16--20
  \overrideTimeSignatureSettings
  6/8             % timeSignature
  #1/8            % beatBase
  #'(3 3) % beatStructure, measureStructure
  #'()            % beamExceptions
  \time 63/84
  s2.*5
  


}