value = floor(value / 10) 
audio_play_sound(snd_collect_coin, 20, false)
global.status.money += value
instance_destroy()