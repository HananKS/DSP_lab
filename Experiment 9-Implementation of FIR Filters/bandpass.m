% Accept filter order N
N = input('Enter the filter order (N): ');

% Filter specifications
fs = 1000;                   % Sampling frequency in Hz
fpass = [100 300];           % Passband frequencies in Hz

% Calculate normalized frequencies (as a fraction of Nyquist frequency)
wpass = fpass / (fs/2);

% Design the ideal bandpass filter
b_ideal = fir1(N, wpass, 'bandpass');

% Apply different windows
b_hamming = b_ideal .* hamming(N+1)';
b_hanning = b_ideal .* hann(N+1)';
b_rectangular = b_ideal .* rectwin(N+1)';
b_triangular = b_ideal .* triang(N+1)';

% Plot frequency responses
figure;
subplot(2, 2, 1);
freqz(b_hamming, 1, 1024, fs);
title('Bandpass Filter with Hamming Window');

subplot(2, 2, 2);
freqz(b_hanning, 1, 1024, fs);
title('Bandpass Filter with Hanning Window');

subplot(2, 2, 3);
freqz(b_rectangular, 1, 1024, fs);
title('Bandpass Filter with Rectangular Window');

subplot(2, 2, 4);
freqz(b_triangular, 1, 1024, fs);
title('Bandpass Filter with Triangular Wind