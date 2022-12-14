# Matlab-Hidden-Messages-App
Application to encode 10 black and white images in a color image.

The four coding methods we implemented follow the same overarching process: altering
pixel values of the individual layers of the host image as little as possible while still imparting
recallable information. The first method takes finds the ten’s place in the pixel and makes it odd
or even, subtracting by 10 for the pixel value, unless it is too close to zero where it is added by
ten.

The second method changes the ten’s place value to be a multiple of three or not when the
input pixel is black or white. This requires the pixel values to be changed by 20 at a time, and by
40 depending on the limitations of being too close to 0 or 255. This change brings the pixel tens
place to its closest multiple of three, while still being odd or even for the first method.
The third method finds the one’s place in the pixel and makes it odd or even, subtracting by 1
for the pixel value.

The last method finds the one’s place value, then adds or subtracts by 2 to find the closest pixel
value that is both a multiple of three and also even or odd as determined by the third method.
Once all the images of each file are embedded, the grayscale color channels are layered on top
of each other, and displayed to the viewer. The result is a picture that is almost unchanged from
the original, yet has ten images hidden inside.

The recovery process is very simple compared to the embedding process. To recover the first
method, a matrix of the pixel’s tens’ place, and using the function “mod” to find the remainder of
the tens place divided by 2, we created a 400x400x1 logical matrix. We use the Expand function
to return the final presented image. To recover the second method, the mod function finds the
remainder of the tens place divided by 3. The final recovered image is expanded and presented
in the GUI. To recover the third method, the code simply checks if the whole pixel value is odd
or even. The fourth method checks if the very last pixel value is divisible wholly by 3.
