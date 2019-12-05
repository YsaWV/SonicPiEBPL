#Bass beat
##| live_loop :beats do
##|   sample :bd_haus
##|   sleep 0.5
##| end
#bass drum sample, waiting for half a beat
##| live_loop :choral_drone do
##|   sample :ambi_choir, rate: 1
##|   sleep 1
##| end

#2 loop at once
live_loop :beats do
  sample :bd_tek
  with_fx :echo, phase: 0.125, mix: 0.4 do
    sample :drum_cymbal_soft, sustain: 0, release: 0.1
    sleep 0.5
  end
end
#change the cutoff to less than 100, makes the space sound
live_loop :bass do
  use_synth :tb303
  synth :tb303, note: :e1, release: 4, cutoff: 80,
    cutoff_attack: 0.5
  sleep 4
end



