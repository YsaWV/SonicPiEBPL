



in_thread do
  use_synth :prophet
  live_loop :calabria do
    with_fx :tremolo do #octava: tremolo
      
      #use_transpose -5
      play (ring :r,:D4,:r, :A4,:r,:D4,:r,:A4,:r,:F4,:r,:A4,:C5,:E4,:r,:A4).tick
      sleep rrand(0.2,0.1)
    end
  end
end
in_thread do
  live_loop :drumsa do
    sample :guit_e_fifths,  rate: [0.5, 0.5, 1, 1].choose if one_in(4)
    #synth :blade, note: 55 , attack: 0.5,release: 0.1
    sleep 0.4
  end
  ##| live_loop :drums do
  ##|   sample :bd_haus, cutoff: 125
  ##|   synth :beep, note: 65 , attack: 0.5,release: 0.1
  ##|   sleep 0.5
  ##| end
  ##| live_loop :amen_break do
  ##|   use_bpm 30
  ##|   sample :loop_amen, beat_stretch: 2
  ##|   sleep 2
  ##| end
end
