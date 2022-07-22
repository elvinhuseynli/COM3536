% Question 1 - Reading an image
clear all;
clc;
A=ReadMyImage('Part5.bmp');
DisplayMyImage(A);

% Question 3 - 2D convolution
clear all;
clc;
x = [1 0 2; -1 3 1; -2 4 0];
h = [1 -1; 0 2];
y = DSLSI2D(h, x)

% Qustion 4 - Image Denoising
clear all;
clc;

X = ReadMyImage('Part4.bmp');
B = 0.7;
h = Prepareh(B);
y = DSLSI2D(h, X);
DisplayMyImage(y);
title('When B=0.7')

X = ReadMyImage('Part4.bmp');
B = 0.1;
h = Prepareh(B);
y = DSLSI2D(h, X);
DisplayMyImage(y);
title('When B=0.1')

X = ReadMyImage('Part4.bmp');
B = 0.4;
h = Prepareh(B);
y = DSLSI2D(h, X);
DisplayMyImage(y);
title('When B=0.4')

% Question 5 - Edge Detection
clear all;
clc;

x = ReadMyImage('Part5.bmp');
h1 = [0.5 -0.5];
y1 = DSLSI2D(h1, x);
DisplayMyImage(y1);
title('Detecting vertical edges')

x = ReadMyImage('Part5.bmp');
h2 = [0.5; -0.5];
y2 = DSLSI2D(h2, x);
DisplayMyImage(y2);
title('Detecting horizontal edges')

x = ReadMyImage('Part5.bmp');
h3 = [0.5 -0.25; -0.25 0];
y3 = DSLSI2D(h3, x);
DisplayMyImage(y3);
title('Detecting both horizontal and vertical edges')

% Question 6 - Pattern Recognition
clear all;
clc;

x = ReadMyImage('Part6x.bmp');
DisplayMyImage(x);
title('Original Image')
h = ReadMyImage('Part6h.bmp');
y = DSLSI2D(h, x);
absy = abs(y);
DisplayMyImage(absy);
title('Image to the power 1')

x = ReadMyImage('Part6x.bmp');
h = ReadMyImage('Part6h.bmp');
y = DSLSI2D(h, x);
absy = abs(y).^3;
DisplayMyImage(absy);
title('Image to the power 3')

x = ReadMyImage('Part6x.bmp');
h = ReadMyImage('Part6h.bmp');
y = DSLSI2D(h, x);
absy = abs(y).^5;
DisplayMyImage(absy);
title('Image to the power 5')
