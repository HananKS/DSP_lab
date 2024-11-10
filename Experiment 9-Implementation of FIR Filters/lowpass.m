% Prompt user to enter the filter order N
N = input('Enter the filter order (N): ');

% Define filter specifications
Fc = 0.2;  % Normalized cutoff frequency (0.2 corresponds to 0.2 * Nyquist rate)

% Design the FIR filter using different windows
b_hamming = fir1(N, Fc, 'low', hamming(N+1));
b_hanning = fir1(N, Fc, 'low', hanning(N+1));
b_rectangular = fir1(N, Fc, 'low', rectwin(N+1));
b_triangular = fir1(N, Fc, 'low', triang(N+1));

% Plot frequency responses
figure;
subplot(2, 2, 1);
freqz(b_hamming, 1, 512);
title('Low-pass Filter with Hamming Window');

subplot(2, 2, 2);
freqz(b_hanning, 1, 512);
title('Low-pass Filter with Hanning Window');

subplot(2, 2, 3);
freqz(b_rectangular, 1, 512);
title('Low-pass Filter with Rectangular Window');

subplot(2, 2, 4);
freqz(b_triangular, 1, 512);
title('Low-pass Filter with Triangular Window');

% Add labels and title for the entire figure
sgtitle(['Frequency Response of Low-pass Filters with Different Windows (N = ' num2str(N) ')']);