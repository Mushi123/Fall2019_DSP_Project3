function [y] = cancellation_system(b,a,ref_audio,inc_audio)
inc_y = audioread(inc_audio);
[ref_x,ref_fs] = audioread(ref_audio);
expected_y = filter(b,a,ref_x);
canc_y = inc_y - expected_y;
sound(canc_y,ref_fs);
end