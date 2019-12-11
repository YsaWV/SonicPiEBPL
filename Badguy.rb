
#use_sample_bpm :loop_compus, num_beats: 4
use_bpm 125
live_loop :loopr do
  #4.times do
  use_synth :piano
  use_transpose 4
  play (ring :G3,:D3,:r,:G3,:Cs3,:D4,:C3,:Bb3,\
        :G3,:D3,:r,:G3,:Cs3,:D4,:C3,:Bb3,\
        :G3,:D3,:r,:G3,:Cs3,:D4,:C3,:Bb3,\
        :G3,:D3,:r,:G3,:Cs3,:D4,:C3,:Bb3,\
        :c4,:g5,:r,:c4,:gb5,:g5,:gb5,:f5,\
        :c4,:g5,:r,:c4,:gb5,:g5,:gb5,:f5).tick
  sleep 0.5
end


with_fx :echo, room: 0.8, decay: 8, phase: 0.25, mix: 0.4 do
  live_loop :rhythm do
    sample :drum_heavy_kick, amp: 0.5
    sample :elec_plip, rate: [0.5, 2, 1.5, 4].choose * [1, 2, 3, 10].choose, amp: 0.6
    sleep 2
  end
end
