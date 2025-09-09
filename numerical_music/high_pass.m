function signal = high_pass(signal, fs, cutoff_freq)
    N = length(signal); % numar de esantioane
    ffted = fft(signal); % transformata FFT a semnalului
    f = (0:N - 1)' * (fs / N); % frecventa fiecarei benzi
    mask = zeros(N, 1); % masca de filtrare

    % Parcurgem doar prima jumatate, restul e simetric
    for i = 1:floor((N + 1) / 2)

        % Daca pastram o frecventa, pastram si simetricul (conjugatul)
        if f(i) >= cutoff_freq
            mask(i) = 1; 
            mask(N - i + 1) = 1;

        end

    end

    % Aplicam masca si reconstruim semnalul in timp cu inversa FFT
    product = mask .* ffted;
    filtered = ifft(product);

    % Normam
    norm = max(abs(filtered)); % norma = maximul dintre valorile absolute
    signal = filtered ./ norm;

end
