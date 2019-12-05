


use_debug false

live_loop :starWars do
  use_synth :tri #:dsaw, :tri
  play (ring :g3,:g3,:g3,:r,:c4,:r,:g4,:r,\
        
        :r,:f4,:e4,:d4,:c5,:g4,:r,\
        
        :r,:f4,:e4,:d4,:c5,:g4,:r,\
        
        :r,:f4,:e4,:d4,:c5,:r,\
        
        :g4,:r,:f4,:e4,:f4,:d4,:r,\
        :r,:r,:g3,:g3,:g3,:r,:c4,:r,:r,:r,\
        
        :r).tick
  sleep 0.25
  
end

live_loop :moon_bass, auto_cue: false do
  sample :bd_haus, amp: 1.5
  #sample :elec_beep, amp: 2, rate: 2, pan: rrand(-0.8, 0.8)
  sleep rrand(0.25,1)
end

