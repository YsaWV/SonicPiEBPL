



in_thread do
  live_loop :ThriftS do
    use_synth :piano
    use_transpose -5
    play (ring :r,:Gs3,:r,:r,:r,:r,:Gs4,:Ds4,:Cs4,:r,:r,:Gs4,:r,:r,:r,:Ds5,:B4,:Gs4,
          
          :r).tick
    sleep 0.15
  end
end
in_thread do
  live_loop :drumsa do
    sample :bd_haus, cutoff: 110
    synth :beep, note: 66 , attack: 0,release: 0.1
    sleep 0.5
  end
  live_loop :drums do
    sample :bd_haus, cutoff: 125
    synth :beep, note: 65 , attack: 0.5,release: 0.1
    sleep 0.5
  end
end