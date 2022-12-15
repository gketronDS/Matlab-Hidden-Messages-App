dog = imread('dogImage.png');
hidden = imread('hidden02.png');
flatDog = Flatten(hidden);
islogical(flatDog)
presentDog = Expand(flatDog);
imshow(presentDog)
function hidden = Expand(flatHidden)
flatHidden1(:,:,1) = flatHidden ;
flatHidden1(:,:,2) = flatHidden ;
flatHidden1(:,:,3) = flatHidden ;
hidden = flatHidden1;
hidden = uint8(hidden);
hidden = 255.*hidden;
end                                                        
function flatHidden = Flatten(hidden)
[x,y,z] = size(hidden);
if z == 1
    flatHidden = hidden > 0;
elseif z == 3
hidden =rgb2gray(hidden);
flatHidden = hidden > 50;
end
end