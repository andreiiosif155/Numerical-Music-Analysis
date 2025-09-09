function mono = stereo_to_mono(stereo)
    mono = stereo;

    % Normalize
    mono = mean(stereo, 2);
    mono = mono / max(abs(mono));
end
