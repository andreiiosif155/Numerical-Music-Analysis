function x = oscillator(freq, fs, dur, A, D, S, R)
    % Cream vectorul de timp
    step = 1 / fs;
    t = (0:step:dur-step)';

    % Generam unda sinusoidala
    wave = sin(2 * pi * freq * t);

    total = round(dur * fs);
    N_A = floor(A * fs); % numar attack samples
    N_D = floor(D * fs); % numar decay samples
    N_R = floor(R * fs); % numar release samples
    N_S = total - (N_A + N_D + N_R); % numar sustain samples

    attack = linspace(0, 1, N_A)'; % attack envelope
    decay = linspace(1, S, N_D)'; % decay envelope
    sustain = S * ones(N_S, 1); % sustain envelope
    release = linspace(S, 0, N_R)'; % release envelope

    env = [attack; decay; sustain; release]; % final envelope

    x = env .* wave; % modulare de amplitudine
end
