%Load Variables
dogImage = imread('dogImage.png');
hidden01 = imread('hidden01.png');
hidden02 = imread('hidden02.png');
hidden03 = imread('hidden03.png');
hidden04 = imread('hidden04.png');
hidden05 = imread('hidden05.png');
hidden06 = imread('hidden06.png');
hidden07 = imread('hidden07.png');
hidden08 = imread('hidden08.png');
hidden09 = imread('hidden09.png');
hidden10 = imread('hidden10.png');
dogR = dogImage(:,:,1);
dogB = dogImage(:,:,2);
dogG = dogImage(:,:,3);
%Set message as logic matrix
flatHidden01 = Flatten(hidden01);
flatHidden02 = Flatten(hidden02);
flatHidden03 = Flatten(hidden03);
flatHidden04 = Flatten(hidden04);
flatHidden05 = Flatten(hidden05);
flatHidden06 = Flatten(hidden06);
flatHidden07 = Flatten(hidden07);
flatHidden08 = Flatten(hidden08);
flatHidden09 = Flatten(hidden09);
flatHidden10 = Flatten(hidden10);

i= [flatHidden01; flatHidden02; flatHidden03; flatHidden04; flatHidden05; flatHidden06; flatHidden07; flatHidden08; flatHidden09; flatHidden10];
encodeTechnique = 1;
decodeTechnique = encodeTechnique;
inputSwitch= [1 1 1 0 0 0 0 0 0 0];
redCounter1 = 0;
blueCounter1 = 0;
greenCounter1 = 0;
% Technique 1
if encodeTechnique == 1
    if inputSwitch(1) == 1
        if flatHidden01 == 0%First with red
            divby2 = mod(dogR,2);
            if divby2 == 0
                dogR = dogR - 1;
            end
        elseif flatHidden01 == 1
            divby2 = mod(dogR,2);
            if divby2 == 1
                dogR = dogR - 1;
            end
        end
        redCounter1 = redCounter1 + 1;
    end
    if inputSwitch(2) == 1
        if flatHidden02 == 0%Now with Blue
            divby2 = mod(dogB,2);
            if divby2 == 0
                dogB = dogB - 1;
            end
        elseif flatHidden02 == 1
            divby2 = mod(dogB,2);
            if divby2 == 1
                dogB = dogB - 1;
            end
        end
        blueCounter1 = blueCounter1 + 1;
    end
    if inputSwitch(3) == 1
        if flatHidden03 == 0%Last with Green
            divby2 = mod(dogG,2);
            if divby2 == 0
                dogG = dogG - 1;
            end
            elseif flatHidden01 == 1
                divby2 = mod(dogG,2);
            if divby2 == 1
                dogG = dogG - 1;
            end
        end
        greenCounter1 = greenCounter1 + 1;
    end
    if inputSwitch(4) == 1
        if flatHidden04 == 0%First with red
            divby2 = mod(dogR,2);
            if divby2 == 0
                dogR = dogR - 1;
            end
        elseif flatHidden04 == 1
            divby2 = mod(dogR,2);
            if divby2 == 1
                dogR = dogR - 1;
            end
        end
        redCounter1 = redCounter1 + 1;
    end
    if inputSwitch(5) == 1
        if flatHidden05 == 0%Now with Blue
            divby2 = mod(dogB,2);
            if divby2 == 0
                dogB = dogB - 1;
            end
        elseif flatHidden05 == 1
            divby2 = mod(dogB,2);
            if divby2 == 1
                dogB = dogB - 1;
            end
        end
        blueCounter1 = blueCounter1 + 1;
    end
    if inputSwitch(6) == 1
        if flatHidden06 == 0%Last with Green
            divby2 = mod(dogG,2);
            if divby2 == 0
                dogG = dogG - 1;
            end
            elseif flatHidden06 == 1
                divby2 = mod(dogG,2);
            if divby2 == 1
                dogG = dogG - 1;
            end
        end
        greenCounter1 = greenCounter1 + 1;
    end
    if inputSwitch(7) == 1
        if flatHidden07 == 0%First with red
            divby2 = mod(dogR,2);
            if divby2 == 0
                dogR = dogR - 1;
            end
        elseif flatHidden07 == 1
            divby2 = mod(dogR,2);
            if divby2 == 1
                dogR = dogR - 1;
            end
        end
        redCounter1 = redCounter1 + 1;
    end
    if inputSwitch(8) == 1
        if flatHidden08 == 0%Now with Blue
            divby2 = mod(dogB,2);
            if divby2 == 0
                dogB = dogB - 1;
            end
        elseif flatHidden08 == 1
            divby2 = mod(dogB,2);
            if divby2 == 1
                dogB = dogB - 1;
            end
        end
        blueCounter1 = blueCounter1 + 1;
    end
    if inputSwitch(9) == 1
        if flatHidden09 == 0%Last with Green
            divby2 = mod(dogG,2);
            if divby2 == 0
                dogG = dogG - 1;
            end
            elseif flatHidden09 == 1
                divby2 = mod(dogG,2);
            if divby2 == 1
                dogG = dogG - 1;
            end
        end
        greenCounter1 = greenCounter1 + 1;
    end
    if inputSwitch(10) == 1
        if flatHidden10 == 0%First with red
            divby2 = mod(dogR,2);
            if divby2 == 0
                dogR = dogR - 1;
            end
        elseif flatHidden10 == 1
            divby2 = mod(dogR,2);
            if divby2 == 1
                dogR = dogR - 1;
            end
        end
        redCounter1 = redCounter1 + 1;
    end
end
%Counters save the value of how many images were incoded
%Can be used to imprint a corner pixel for off computer recall.
secretDog(:,:,1) = dogR;
secretDog(:,:,2) = dogB;
secretDog(:,:,3) = dogG;
imshow(secretDog)

%Image Recall




function hidden = Expand(flatHidden)
flatHidden1(:,:,1) = flatHidden ;
flatHidden1(:,:,2) = flatHidden ;
flatHidden1(:,:,3) = flatHidden ;
hidden = flatHidden1;
hidden = uint8(hidden);
hidden = 255.*hidden;
end                                                        
function flatHidden = Flatten(hidden)
[~,~,z] = size(hidden);
if z == 1
    flatHidden = hidden > 0;
elseif z == 3
hidden =rgb2gray(hidden);
flatHidden = hidden > 50;
end
end