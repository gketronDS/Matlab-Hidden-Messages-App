dog = imread('dogImage.png');
hidden2 = imread('hidden02.png');
flatHidden = Flatten(hidden2);
imshow(flatHidden)
islogical(flatHidden)                                                           
function flatHidden = Flatten(hidden)
[x,y,z] = size(hidden);
if z == 1
    flatHidden = hidden > 0;
elseif z == 3
hidden =rgb2gray(hidden);
flatHidden = hidden > 50;
end
end

    

