%% Load Variables
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
dogB = dogImage(:,:,3);
dogG = dogImage(:,:,2);
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

rdogR = mod(dogR ,100);
rdogG = mod(dogG ,100);
rdogB = mod(dogB ,100);

ydogR = floor(rdogR ./10);
ydogG = floor(rdogG ./10);
ydogB = floor(rdogB ./10);
%debugging values
funcgo1 = 1;
funcgo2 = 0;
funcgo3 = 0;
funcgo4 = 0;
funcgo5 = 0;
funcgo6 = 0;
funcgo7 = 0;
funcgo8 = 0;
funcgo9 = 0;
funcgo10 =0;
checkRed = dogR;
checkGreen = dogG;
checkBlue = dogB;
%% red layer 
    if funcgo1 == 1
        if flatHidden01 == 0 %checks if it should be odd (0 wants an odd 10's place)
            divby2 = mod(ydogR,2);
            if divby2 == 0 %does function if the 10s place is odd
                if dogR(:,:) - 10 < 0
                    dogR = dogR + 10;
                    ydogR = ydogR + 1;
                else
                    dogR = dogR - 10;
                    ydogR = ydogR - 1;
                end
            end
        end
        dogR(:,1);
        if dogR(:,1) == checkRed(:,1)
            disp("Y'all messed up");
        end
        if flatHidden01 == 1 % checks if it should be even in tens place
            divby2 = mod(ydogR,2);
            if divby2 == 1 %does function if 10's place is odd
                if dogR(:,:) - 10 < 0 
                    dogR = dogR + 10;
                    ydogR = ydogR + 10;
                else
                    dogR = dogR - 10;
                    ydogR = ydogR - 1;
                end
                
            end
        end
        
    end
    if funcgo2 == 1
        if flatHidden04 == 0 %checks if it should be not be 3x
            divby2 = mod(ydogR,2);
            if divby2 == 1 %function goes if odd ydogR
                if mod(ydogR,3) == 0
                    if dogR - 20 <= 0
                        
                        dogR = dogR + 20;
                        ydogR = ydogR + 2;
                    else 
                        dogR = dogR - 20;
                        ydogR = ydogR - 2;
                    end
                end
            else %function goes if even
                if mod(ydogR,3) == 0
                    if dogR - 20 <= 0
                        dogR = dogR + 20;
                        ydogR = ydogR + 2;
                    else 
                        dogR = dogR - 20;
                        ydogR = ydogR - 2;
                    end
                end
            end
        end
        if flatHidden04 == 1 %checks if it should be 3x
            divby2 = mod(ydogR,2);
            if divby2 == 1 %function goes if odd ydogR
                if mod(ydogR,3) == 1
                    dogR = dogR + 20;
                    ydogR = ydogR + 2;
                elseif mod(ydogR,3) == 2
                    dogR = dogR - 20;
                    ydogR = ydogR - 2;
                end
            else %function goes if even ydogR
                if mod(ydogR,3) == 1
                    if dogR + 20 >= 255
                        dogR = dogR - 40;
                        ydogR = ydogR - 4;
                    else
                        dogR = dogR + 20;
                        ydogR = ydogR + 2;
                    end
                elseif mod(ydogR,3) == 2
                    dogR = dogR + 20;
                    ydogR = ydogR + 2;
                end
            end
        end
        2
    end
    if funcgo3 == 1
        if flatHidden07 == 0 %checks if it should be odd
            divby2 = mod(dogR,2);
            if divby2 == 0 %if even, it lowers by 1
                dogR = dogR - 1;
            end
        elseif flatHidden07 == 1 %checks if it should be even
            divby2 = mod(dogR,2);
            if divby2 == 1 %if odd, it lowers by 1
                dogR = dogR - 1;
            end
        end
        3
    end
    if funcgo4 == 1
        if flatHidden10 == 0 %checks if it should not be 3x
            divby2 = mod(dogR,2);
            if divby2 == 1 % must maintain odd value
                if mod(dogR,3) == 0
                    ydogR2dogR = dogR - 2; %check that dogR -2 wont change tens place
                    ydogR2dogR = ydogR2dogR ./ 10;
                    ydogR2dogR = floor(ydogR2dogR);
                    if mod(ydogR2dogR,10) == ydogR
                        dogR = dogR - 2;
                    else
                        dogR = dogR + 2;
                    end
                end
            else % must maintain even value
                if mod(dogR,3) == 0
                    ydogR2dogR = dogR - 2; %check that dogR -2 wont change tens place
                    ydogR2dogR = ydogR2dogR ./ 10;
                    ydogR2dogR = floor(ydogR2dogR);
                    if mod(ydogR2dogR,10) == ydogR
                        dogR = dogR - 2;
                    else
                        dogR = dogR + 2;
                    end
                end
            end
        end
        if flatHidden10 == 1 %checks it should be 3x
           divby2 = mod(dogR,2);
            if divby2 == 1 %odd value must be maintained
                if mod(dogR,3) == 1
                    ydogR2dogR = dogR + 2; %check that dogR -2 wont change tens place
                    ydogR2dogR = ydogR2dogR ./ 10;
                    ydogR2dogR = floor(ydogR2dogR);
                    if mod(ydogR2dogR,10) == ydogR
                        dogR = dogR + 2;
                    else
                        dogR = dogR - 2;
                    end
                elseif mod(dogR,3) == 2
                    ydogR2dogR = dogR - 2; %check that dogR -2 wont change tens place
                    ydogR2dogR = ydogR2dogR ./ 10;
                    ydogR2dogR = floor(ydogR2dogR);
                    if mod(ydogR2dogR,10) == ydogR
                        dogR = dogR - 2;
                    else
                        dogR = dogR + 4;
                    end
                end
            end
        end
        4
    end
%% green layer
    if funcgo5 == 1
        if flatHidden02 == 0 %checks if it should be odd (0 wants an odd 10's place)
            divby2 = mod(ydogG,2);
            if divby2 == 0 %does function if the 10s place is odd
                if dogG - 10 < 0
                    dogG = dogG + 10;
                    ydogG = ydogG + 1;
                else
                    dogG = dogG - 10;
                    ydogG = ydogG - 1;
                end
            end
        elseif flatHidden02 == 1 % checks if it should be even in tens place
            divby2 = mod(ydogG,2);
            if divby2 == 1 %does function if 10's place is odd
                if dogG - 10 < 0 
                    dogG = dogG + 10;
                    ydogG = ydogG + 10;
                else
                    dogG = dogG - 10;
                    ydogG = ydogG - 1;
                end
                
            end
        end
        5
    end
    if funcgo6 == 1
        if flatHidden05 == 0 %checks if it should be not be 3x
            divby2 = mod(ydogG,2);
            if divby2 == 1 %function goes if odd ydogR
                if mod(ydogG,3) == 0
                    if dogG - 20 <= 0
                        
                        dogG = dogG + 20;
                        ydogG = ydogG + 2;
                    else 
                        dogG = dogG - 20;
                        ydogG = ydogG - 2;
                    end
                end
            else %function goes if even
                if mod(ydogG,3) == 0
                    if dogG - 20 <= 0
                        dogG = dogG + 20;
                        ydogG = ydogG + 2;
                    else 
                        dogG = dogG - 20;
                        ydogG = ydogG - 2;
                    end
                end
            end
        end
        if flatHidden05 == 1 %checks if it should be 3x
            divby2 = mod(ydogG,2);
            if divby2 == 1 %function goes if odd ydogR
                if mod(ydogG,3) == 1
                    dogG = dogG + 20;
                    ydogG = ydogG + 2;
                elseif mod(ydogG,3) == 2
                    dogG = dogG - 20;
                    ydogG = ydogG - 2;
                end
            else %function goes if even ydogR
                if mod(ydogG,3) == 1
                    if dogG + 20 >= 255
                        dogG = dogG - 40;
                        ydogG = ydogG - 4;
                    else
                        dogG = dogG + 20;
                        ydogG = ydogG + 2;
                    end
                elseif mod(ydogG,3) == 2
                    dogG = dogG + 20;
                    ydogG = ydogG + 2;
                end
            end
        end
        6
    end
    if funcgo7 == 1
        if flatHidden08 == 0 %checks if it should be odd
            divby2 = mod(dogG,2);
            if divby2 == 0 %if even, it lowers by 1
                dogG = dogG - 1;
            end
        elseif flatHidden08 == 1 %checks if it should be even
            divby2 = mod(dogG,2);
            if divby2 == 1 %if odd, it lowers by 1
                dogG = dogG - 1;
            end
        end
        7
    end
%% blue layer
    if funcgo8 == 1
        if flatHidden03 == 0 %checks if it should be odd (0 wants an odd 10's place)
            divby2 = mod(ydogB,2);
            if divby2 == 0 %does function if the 10s place is odd
                if dogB - 10 < 0
                    dogB = dogB + 10;
                    ydogB = ydogB + 1;
                else
                    dogB = dogB - 10;
                    ydogB = ydogB - 1;
                end
            end
        elseif flatHidden03 == 1 % checks if it should be even in tens place
            divby2 = mod(ydogB,2);
            if divby2 == 1 %does function if 10's place is odd
                if dogB - 10 < 0 
                    dogB = dogB + 10;
                    ydogB = ydogB + 10;
                else
                    dogB = dogB - 10;
                    ydogB = ydogB - 1;
                end
                
            end
        end
        8
    end
    if funcgo9 == 1
        if flatHidden06 == 0 %checks if it should be not be 3x
            divby2 = mod(ydogB,2);
            if divby2 == 1 %function goes if odd ydogR
                if mod(ydogB,3) == 0
                    if dogB - 20 <= 0
                        dogB = dogB + 20;
                        ydogB = ydogB + 2;
                    else 
                        dogB = dogB - 20;
                        ydogB = ydogB - 2;
                    end
                end
            else %function goes if even
                if mod(ydogB,3) == 0
                    if dogB - 20 <= 0
                        dogB = dogB + 20;
                        ydogB = ydogB + 2;
                    else 
                        dogB = dogB - 20;
                        ydogB = ydogB - 2;
                    end
                end
            end
        end
        if flatHidden06 == 1 %checks if it should be 3x
            divby2 = mod(ydogB,2);
            if divby2 == 1 %function goes if odd ydogR
                if mod(ydogB,3) == 1
                    dogB = dogB + 20;
                    ydogB = ydogB + 2;
                elseif mod(ydogB,3) == 2
                    dogB = dogB - 20;
                    ydogB = ydogB - 2;
                end
            else %function goes if even ydogR
                if mod(ydogB,3) == 1
                    if dogB + 20 >= 255
                        dogB = dogB - 40;
                        ydogB = ydogB - 4;
                    else
                        dogB = dogB + 20;
                        ydogB = ydogB + 2;
                    end
                elseif mod(ydogB,3) == 2
                    dogB = dogB + 20;
                    ydogB = ydogB + 2;
                end
            end
        end
        9
    end
    if funcgo10 == 1
        if flatHidden09 == 0 %checks if it should be odd
            divby2 = mod(dogB,2);
            if divby2 == 0 %if even, it lowers by 1
                dogB = dogB - 1;
            end
        elseif flatHidden09 == 1 %checks if it should be even
            divby2 = mod(dogB,2);
            if divby2 == 1 %if odd, it lowers by 1
                dogB = dogB - 1;
            end
        end
        10
    end                         
%% Merge Frames and display
dogFinal = cat(3, dogR , dogG, dogB);

                    
%% Uncode Hidden1

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
dogFinalR(:,1);
imshow(extractHidden01)
    




        
      
        

% FunctionSpam
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