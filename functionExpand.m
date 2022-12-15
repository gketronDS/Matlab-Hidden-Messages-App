dog = imread('dogImage.png');
hidden = imread('hidden02.png');
flatHidden = Expand(hidden);
imshow(flatHidden)
function hidden = Expand(flatHidden)
flatHidden1(:,:,1) = flatHidden ;
flatHidden1(:,:,2) = flatHidden ;
flatHidden1(:,:,3) = flatHidden ;
hidden = flatHidden1;
hidden = uint8(hidden);
hidden = 255.*hidden;
end                