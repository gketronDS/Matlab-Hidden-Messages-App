dogFinalR = dogFinal(:,:,1);
ydogFinalR = floor( mod(dogFinalR,10) ./ 10);
revivedHidden01 = zeros(400,400);
for i = 1:400
    for j = 1:400
        if mod(ydogFinalR(i,j),2) == 0
            revivedHidden1(i,j) = true;
        else
            revivedHidden1(i,j) = false;
        end
    end
end
revivedHidden1;
extractHidden01 = Expand(revivedHidden1);
imshow(extractHidden01)

function hidden = Expand(flatHidden)
flatHidden1(:,:,1) = flatHidden ;
flatHidden1(:,:,2) = flatHidden ;
flatHidden1(:,:,3) = flatHidden ;
hidden = flatHidden1;
hidden = uint8(hidden);
hidden = 255.*hidden;
end