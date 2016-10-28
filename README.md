# Thread-Portrait
A project inspired on the idea of using machines to create art. The originality of the idea is credited to artist Mr. Petros Vrellis. I plan to churn the circuits in a computers to give me the patterns, basically the same thing he did.
Readers can go through the link http://artof01.com/vrellis/works/knit.html to get a clear idea.


TLDR details are below:
28 inch alluminium rim=71 cm in diameter
200 anchor pegs
2km thread

We consider a picture/prtrait to be knitted on a frame (square/triangular/circular depends on our weirdness). So our input is a picture which has numerous pixels and correspoing pixel values in RGB. Converting 3 RGB pixel values to a singular grayscale will ease our job, right? Our objective is to create a thread picture with a defined boundary, from the given pixel values.

Mathematical notations to keep in mind beforehand. 
'XY'- caps denote a matrix
'x' - smalls denote a fixed variable
'i' - denotes any numeric variable
'xi' - denotes a integer variable which ranges from 0 to x

Lets suppose I(x,y,3) is the image matrix containg RGB values.
As we are not limiting ourselves to the shape of the frame, we need a mapping matrix: PM(p,3)  # PM-Picture Mapping,p-no of total pixels considered,3 denotes the x-cordinate of the pixel,y-cordinate of the pixel and the pixel value
We are considering a pixel to be a square one. So the pixel cordinate should point the midpoint of the pixel.

Next will be our anchor pegs mapping: APM(a,2) #a-no of anchor pegs,3-x & y cordinates

So we have 'a' number of anchors and there is a possibility of aC2 thread line on the final frame. So we are defining a matrix called Thread Presence Matrix: TPM(p,a,a) # TPM(5,4,6)=1 denotes that the thread from achor-4 to anchor-6 passes through pixel-5, TPM=0 denotes otherwise. Next when we have configured the TPM matrix, we know how many threads can pass through one pixel. We can say TPM(pi,ai1,ai2)=0 when ai1=ai2. If you dont get this, you have a problem.

Now look into the greyscale values, range of PM(pi,3) is 0 to 127. Where 0 represents black and 127 represents white. We cannot have 127 threads passing through one pixel we need to tone down the range to a smaller number. This will denote the maximum possible no of threads we are allowing on a pixel to consider it as a complete black pixel. Lets refer to this as Maximum Thread Scenario. So when mts=5 we say the maximum thread allowed through a pixel is 5. And we can afford to have 6 grayscale values. Here we need a function 'f_update_grayscale' to convert the range from [0,127] to [0,mts]. A linear function will not ensure a better result. We need brainstorming.

Now we modify the PM(p,3) matrix where the range of gray scale values range from 0-6 in reverse order. # f_update_grayscale(127)=0

So listing down all the variables and matrix till now:
I(x,y,3),PM(p,3),APM(a,2),p,a,mts






