function [S f t] = spectrogram(signal, fs, window_size)

    % Determinam lungimea si numarul de ferestre complete
    len = length(signal);
    windows = floor(len / window_size);

    han = hanning(window_size); % fereastra Hann
    N = 2 * window_size; % rezolutie dubla pentru FFT
    num_freq = N / 2; % numarul de benzi de frecventa fara partea conjugata
    S = zeros(num_freq, windows); % matricea spectograma

    % Parcurgem fiecare fereastra
    for i = 1:windows
        % Extragem segmentul de semnal
        j = (i - 1) * window_size + 1;
        k = i * window_size;
        curr = signal(j:k);

        % Aplicam fereastra si facem FFT
        windowed = curr .* han;
        ffted = fft(windowed, N);

        % Eliminam partea conjugata
        S(:, i) = abs(ffted(1:num_freq));
    end

    % Construim vectorii de frecventa si de timp
    f = (0:num_freq - 1)' * fs / N;
    t = (0:windows - 1)' * (window_size / fs);
end
