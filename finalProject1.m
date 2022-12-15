%% Load Variables
tic
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
hidden01 = Expand(hidden01);
hidden02 = Expand(hidden02);
hidden03 = Expand(hidden03);
hidden04 = Expand(hidden04);
hidden05 = Expand(hidden05);
hidden06 = Expand(hidden06);
hidden07 = Expand(hidden07);
hidden08 = Expand(hidden08);
hidden09 = Expand(hidden09);
hidden10 = Expand(hidden10);
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
funcgo2 = 1;
funcgo3 = 1;
funcgo4 = 1;
funcgo5 = 1;
funcgo6 = 1;
funcgo7 = 1;
funcgo8 = 1;
funcgo9 = 1;
funcgo10 =1;
checkRed = dogR;
checkGreen = dogG;
checkBlue = dogB;
%% red layer 

    if funcgo1 == 1
        for i = 1:400
            for j = 1:400
                if flatHidden01(i,j) == 0 %checks if it should be odd (0 wants an odd 10's place)
                    divby2 = mod(ydogR(i,j),2);
                    if divby2 == 0 %does function if the 10s place is odd
                        if dogR(i,j) - 10 < 0
                            dogR(i,j) = dogR(i,j) + 10;
                            ydogR(i,j) = ydogR(i,j) + 1;
                        else
                            dogR(i,j) = dogR(i,j) - 10;
                            ydogR(i,j) = ydogR(i,j) - 1;
                        end
                    end
                end
                if flatHidden01(i,j) == 1 % checks if it should be even in tens place
                    divby2 = mod(ydogR(i,j),2);
                        if divby2 == 1 %does function if 10's place is odd
                            if dogR(i,j) - 10 < 0 
                                dogR(i,j) = dogR(i,j) + 10;
                                ydogR(i,j) = ydogR(i,j); 
                            else
                                dogR(i,j) = dogR(i,j) - 10;
                                ydogR(i,j) = ydogR(i,j) - 1;
                            end
                        end
                end
            end
        end
        1;
    end
    if funcgo2 == 1
        for i = 1:400
            for j = 1:400       
                if flatHidden02(i,j) == 0 %checks if it should be not be 3x
                    divby2 = mod(ydogR(i,j),2);
                        if divby2 == 1 %function goes if odd ydogR
                            if mod(ydogR(i,j),3) == 0
                                if dogR(i,j) - 20 < 0 
                                    dogR(i,j) = dogR(i,j) + 20;
                                    ydogR(i,j) = ydogR(i,j) + 2;
                                else
                                    dogR(i,j) = dogR(i,j) - 20;
                                    ydogR(i,j) = ydogR(i,j) - 2;
                                end
                            end
                        else %function goes if even
                            if mod(ydogR(i,j),3) == 0
                                if dogR(i,j) - 20 < 0
                                    dogR(i,j) = dogR(i,j) + 20;
                                    ydogR(i,j) = ydogR(i,j) + 2;
                                else
                                    dogR(i,j) = dogR(i,j) - 20;
                                    ydogR(i,j) = ydogR(i,j) - 2;
                                end
                            end
                        end
                end
                if flatHidden02(i,j) == 1 %checks if it should be 3x
                    divby2 = mod(ydogR(i,j),2);
                        if divby2 == 1 %function goes if odd ydogR
                            if mod(ydogR(i,j),3) == 1
                                dogR(i,j) = dogR(i,j) + 20;
                                ydogR(i,j) = ydogR(i,j) + 2;
                            elseif mod(ydogR(i,j),3) == 2
                                dogR(i,j) = dogR(i,j) - 20;
                                ydogR(i,j) = ydogR(i,j) - 2;
                            end
                        else %function goes if even ydogR
                            if mod(ydogR(i,j),3) == 1
                                if dogR(i,j) + 20 > 255
                                    dogR(i,j) = dogR(i,j) - 40;
                                    ydogR(i,j) = ydogR(i,j) - 4;
                                else
                                    dogR(i,j) = dogR(i,j) + 20;
                                    ydogR(i,j) = ydogR(i,j) + 2;
                                end
                            elseif mod(ydogR(i,j),3) == 2
                                dogR(i,j) = dogR(i,j) + 20;
                                ydogR(i,j) = ydogR(i,j)+ 2;
                            end
                        end
                end
            end
        end
        2;
    end
    if funcgo3 == 1
        for i = 1:400
            for j = 1:400
                if flatHidden03(i,j)== 0 %checks if it should be odd
                    divby2 = mod(dogR(i,j),2);
                        if divby2 == 0 %if even, it lowers by 1
                                ydogR2dogR(i,j) = dogR(i,j) - 1; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogR(i,j)
                                    if dogR(i,j) == 0
                                        dogR(i,j) = dogR(i,j) + 1;
                                    else    
                                        dogR(i,j) = dogR(i,j) - 1;
                                    end
                                else
                                    dogR(i,j) = dogR(i,j) + 1;
                                end
                        end
                elseif flatHidden03(i,j) == 1 %checks if it should be even
                    divby2 = mod(dogR(i,j),2);
                        if divby2 == 1 %if odd, it lowers by 1
                                ydogR2dogR(i,j) = dogR(i,j) - 1; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogR(i,j)
                                    dogR(i,j) = dogR(i,j) - 1;
                                else
                                    dogR(i,j) = dogR(i,j) + 1;
                                end 
                        end
                end
            end
        end
        3;
    end
    if funcgo4 == 1
        for i = 1:400
            for j = 1:400
                if flatHidden04(i,j) == 0 %checks if it should not be 3x
                    divby2 = mod(dogR(i,j),2);
                    zdogFinalR(i,j) = dogR(i,j); 
                    zdogFinalR(i,j) = mod(zdogFinalR(i,j),100);
                    zdogFinalR(i,j) = mod(zdogFinalR(i,j),10);
                        if divby2 == 1 % must maintain odd value
                            
                            if mod(zdogFinalR(i,j),3) == 0
                                ydogR2dogR(i,j) = dogR(i,j) - 2; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogR(i,j)
                                    dogR(i,j) = dogR(i,j) - 2;
                                else
                                    dogR(i,j) = dogR(i,j) + 2;
                                end
                            end
                        else % must maintain even value
                            if mod(zdogFinalR(i,j),3) == 0
                                ydogR2dogR(i,j) = dogR(i,j) - 2; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogR(i,j)
                                    dogR(i,j) = dogR(i,j) - 2;
                                else
                                    dogR(i,j) = dogR(i,j) + 2;
                                end
                            end
                        end
                end
                if flatHidden04(i,j) == 1 %checks it should be 3x
                    divby2 = mod(dogR(i,j),2);
                    zdogFinalR(i,j) = dogR(i,j); 
                    zdogFinalR(i,j) = mod(zdogFinalR(i,j),100);
                    zdogFinalR(i,j) = mod(zdogFinalR(i,j),10); 
                        if divby2 == 1 %odd value must be maintained
                            if mod(zdogFinalR(i,j),3) == 1
                                ydogR2dogR(i,j) = dogR(i,j) + 2; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogR(i,j)
                                    dogR(i,j) = dogR(i,j) + 2;
                                else
                                    dogR(i,j) = dogR(i,j) - 2;
                                end
                            elseif mod(zdogFinalR(i,j),3) == 2
                                ydogR2dogR(i,j) = dogR(i,j) - 2; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogR(i,j)
                                    dogR(i,j) = dogR(i,j) - 2;
                                else
                                    dogR(i,j) = dogR(i,j)+ 4;
                                end
                            end
                        end
                end
            end
        end
        4;
    end
%% green layer
     if funcgo5 == 1
        for i = 1:400
            for j = 1:400
                if flatHidden05(i,j) == 0 %checks if it should be odd (0 wants an odd 10's place)
                    divby2 = mod(ydogG(i,j),2);
                    if divby2 == 0 %does function if the 10s place is odd
                        if dogG(i,j) - 10 < 0
                            dogG(i,j) = dogG(i,j) + 10;
                            ydogG(i,j) = ydogG(i,j) + 1;
                        else
                            dogG(i,j) = dogG(i,j) - 10;
                            ydogG(i,j) = ydogG(i,j) - 1;
                        end
                    end
                end
                if flatHidden05(i,j) == 1 % checks if it should be even in tens place
                    divby2 = mod(ydogG(i,j),2);
                        if divby2 == 1 %does function if 10's place is odd
                            if dogG(i,j) - 10 < 0 
                                dogG(i,j) = dogG(i,j) + 10;
                                ydogG(i,j) = ydogG(i,j); 
                            else
                                dogG(i,j) = dogG(i,j) - 10;
                                ydogG(i,j) = ydogG(i,j) - 1;
                            end
                        end
                end
            end
        end
        5;
     end
     if funcgo6 == 1
        for i = 1:400
            for j = 1:400
                if flatHidden06(i,j)== 0 %checks if it should be odd
                    divby2 = mod(dogG(i,j),2);
                        if divby2 == 0 %if even, it lowers by 1
                            ydogR2dogR = ones(400,400);
                                ydogR2dogR(i,j) = dogG(i,j) - 1; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogG(i,j)
                                    if dogG(i,j) == 0
                                        dogG(i,j) = dogG(i,j) + 1;
                                    else    
                                        dogG(i,j) = dogG(i,j) - 1;
                                    end
                                else
                                    dogG(i,j) = dogG(i,j) + 1;
                                end
                        end
                elseif flatHidden06(i,j) == 1 %checks if it should be even
                    divby2 = mod(dogG(i,j),2);
                        if divby2 == 1 %if odd, it lowers by 1
                            ydogR2dogR = ones(400,400);
                                ydogR2dogR(i,j) = dogG(i,j) - 1; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogG(i,j)
                                    dogG(i,j) = dogG(i,j) - 1;
                                else
                                    dogG(i,j) = dogG(i,j) + 1;
                                end
                        end
                end
            end
        end
        6;
    end
    if funcgo7 == 1
        for i = 1:400
            for j = 1:400
                if flatHidden07(i,j) == 0 %checks if it should not be 3x
                    divby2 = mod(dogG(i,j),2);
                        if divby2 == 1 % must maintain odd value
                            if mod(dogG(i,j),3) == 0
                                ydogR2dogR(i,j) = dogG(i,j) - 2; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogG(i,j)
                                    dogG(i,j) = dogG(i,j) - 2;
                                else
                                    dogG(i,j) = dogG(i,j) + 2;
                                end
                            end
                        else % must maintain even value
                            if mod(dogG(i,j),3) == 0
                                ydogR2dogR(i,j) = dogG(i,j) - 2; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogG(i,j)
                                    dogG(i,j) = dogG(i,j) - 2;
                                else
                                    dogG(i,j) = dogG(i,j) + 2;
                                end
                            end
                        end
                end
                if flatHidden07(i,j) == 1 %checks it should be 3x
                    divby2 = mod(dogG(i,j),2);
                        if divby2 == 1 %odd value must be maintained
                            if mod(dogG(i,j),3) == 1
                                ydogR2dogR(i,j) = dogG(i,j) + 2; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogG(i,j)
                                    dogG(i,j) = dogG(i,j) + 2;
                                else
                                    dogG(i,j) = dogG(i,j) - 2;
                                end
                            elseif mod(dogG(i,j),3) == 2
                                ydogR2dogR(i,j) = dogG(i,j) - 2; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogG(i,j)
                                    dogG(i,j) = dogG(i,j) - 2;
                                else
                                    dogG(i,j) = dogG(i,j)+ 4;
                                end
                            end
                        end
                end
            end
        end
        7;
    end
%% blue layer
     if funcgo8 == 1
        for i = 1:400
            for j = 1:400
                if flatHidden08(i,j) == 0 %checks if it should be odd (0 wants an odd 10's place)
                    divby2 = mod(ydogB(i,j),2);
                    if divby2 == 0 %does function if the 10s place is odd
                        if dogB(i,j) - 10 <= 0
                            dogB(i,j) = dogB(i,j) + 10;
                            ydogB(i,j) = ydogB(i,j) + 1;
                        else
                            dogB(i,j) = dogB(i,j) - 10;
                            ydogB(i,j) = ydogB(i,j) - 1;
                        end
                    end
                end
                if flatHidden08(i,j) == 1 % checks if it should be even in tens place
                    divby2 = mod(ydogB(i,j),2);
                        if divby2 == 1 %does function if 10's place is odd
                            if dogB(i,j) - 10 <= 0 
                                dogB(i,j) = dogB(i,j) + 10;
                                ydogB(i,j) = ydogB(i,j); 
                            else
                                dogB(i,j) = dogB(i,j) - 10;
                                ydogB(i,j) = ydogB(i,j) - 1;
                            end
                        end
                end
            end
        end
        8;
     end
     if funcgo9 == 1
        for i = 1:400
            for j = 1:400
                if flatHidden09(i,j)== 0 %checks if it should be odd
                    divby2 = mod(dogB(i,j),2);
                        if divby2 == 0 %if even, it lowers by 1
                            
                            ydogR2dogR = ones(400,400);
                                ydogR2dogR(i,j) = dogB(i,j) - 1; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogB(i,j)
                                    if dogB(i,j) == 0
                                        dogB(i,j) = dogB(i,j) + 1;
                                    else    
                                        dogB(i,j) = dogB(i,j) - 1;
                                    end
                                else
                                    dogB(i,j) = dogB(i,j) + 1;
                                end
                        end
                elseif flatHidden09(i,j) == 1 %checks if it should be even
                    divby2 = mod(dogB(i,j),2);
                        if divby2 == 1 %if odd, it lowers by 1
                            ydogR2dogR = ones(400,400);
                                ydogR2dogR(i,j) = dogB(i,j) - 1; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogB(i,j)
                                    dogB(i,j) = dogB(i,j) - 1;
                                else
                                    dogB(i,j) = dogB(i,j) + 1;
                                end
                        end
                end
            end
        end
        9;
    end
    if funcgo10 == 1
        for i = 1:400
            for j = 1:400
                if flatHidden10(i,j) == 0 %checks if it should not be 3x
                    divby2 = mod(dogB(i,j),2);
                        if divby2 == 1 % must maintain odd value
                            if mod(dogB(i,j),3) == 0
                                ydogR2dogR(i,j) = dogB(i,j) - 2; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogB(i,j)
                                    dogB(i,j) = dogB(i,j) - 2;
                                else
                                    dogB(i,j) = dogB(i,j) + 2;
                                end
                            end
                        else % must maintain even value
                            if mod(dogB(i,j),3) == 0
                                ydogR2dogR(i,j) = dogB(i,j) - 2; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogB(i,j)
                                    dogB(i,j) = dogB(i,j) - 2;
                                else
                                    dogB(i,j) = dogB(i,j) + 2;
                                end
                            end
                        end
                end
                if flatHidden10(i,j) == 1 %checks it should be 3x
                    divby2 = mod(dogB(i,j),2);
                        if divby2 == 1 %odd value must be maintained
                            if mod(dogB(i,j),3) == 1
                                ydogR2dogR(i,j) = dogB(i,j) + 2; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogB(i,j)
                                    dogB(i,j) = dogB(i,j) + 2;
                                else
                                    dogB(i,j) = dogB(i,j) - 2;
                                end
                            elseif mod(dogB(i,j),3) == 2
                                ydogR2dogR(i,j) = dogB(i,j) - 2; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogB(i,j)
                                    dogB(i,j) = dogB(i,j) - 2;
                                else
                                    dogB(i,j) = dogB(i,j)+ 4;
                                end
                            end
                        end
                end
            end
        end
        10;
    end
%% Merge Frames and display
dogFinal = cat(3, dogR , dogG, dogB);

imshow(dogFinal)
%% Uncode Hidden Variables
dogFinalR = dogFinal(:,:,1);
dogFinalG = dogFinal(:,:,2);
dogFinalB = dogFinal(:,:,3);
ydogFinalR = dogFinalR;
ydogFinalG = dogFinalG;
ydogFinalB = dogFinalB;

    %% Image 1 
    revivedHidden1 = zeros(400,400);
    for i = 1:400
        for j = 1:400
            ydogFinalR(i,j) = dogFinalR(i,j); 
            ydogFinalR(i,j) = ydogFinalR(i,j) / 10;
            ydogFinalR(i,j) = floor(ydogFinalR(i,j));
            ydogFinalR(i,j) = mod(ydogFinalR(i,j),10);
                if mod(ydogFinalR(i,j),2) == 0
                    revivedHidden1(i,j) = true;
                else
                    revivedHidden1(i,j) = false;
                end
        end
    end
    revivedHidden1;
    extractHidden01 = Expand(revivedHidden1);
    %% Image 2 
    revivedHidden2 = zeros(400,400);
    for i = 1:400
        for j = 1:400
             ydogFinalR(i,j) = dogFinalR(i,j); 
            ydogFinalR(i,j) = ydogFinalR(i,j) / 10;
            ydogFinalR(i,j) = floor(ydogFinalR(i,j));
            ydogFinalR(i,j) = mod(ydogFinalR(i,j),10);
                if mod(ydogFinalR(i,j),3) == 0
                    revivedHidden2(i,j) = true;
                else
                    revivedHidden2(i,j) = false;
                end
        end
    end
    revivedHidden2;
    extractHidden02 = Expand(revivedHidden2);
    %% Image 3 
    revivedHidden3 = zeros(400,400);
    for i = 1:400
        for j = 1:400
             ydogFinalR(i,j) = dogFinalR(i,j); 
            ydogFinalR(i,j) = ydogFinalR(i,j) / 10;
            ydogFinalR(i,j) = floor(ydogFinalR(i,j));
            ydogFinalR(i,j) = mod(ydogFinalR(i,j),10);
                if mod(dogFinalR(i,j),2) == 0
                    revivedHidden3(i,j) = true;
                else
                    revivedHidden3(i,j) = false;
                end
        end
    end
    revivedHidden3;
    extractHidden03 = Expand(revivedHidden3);
    %% Image 4 
    revivedHidden4 = zeros(400,400);
    for i = 1:400
        for j = 1:400
            zdogFinalR(i,j) = dogFinalR(i,j); 
            zdogFinalR(i,j) = mod(zdogFinalR(i,j),100);
            zdogFinalR(i,j) = mod(zdogFinalR(i,j),10);
                if mod(zdogFinalR(i,j),3) == 0
                    revivedHidden4(i,j) = true;
                else
                    revivedHidden4(i,j) = false;
                end
        end
    end
    revivedHidden4;
    extractHidden04 = Expand(revivedHidden4);
    %% Image 5 
    revivedHidden5 = zeros(400,400);
    for i = 1:400
        for j = 1:400
              ydogFinalG(i,j) = dogFinalG(i,j); 
            ydogFinalG(i,j) = ydogFinalG(i,j) / 10;
            ydogFinalG(i,j) = floor(ydogFinalG(i,j));
            ydogFinalG(i,j) = mod(ydogFinalG(i,j),10);
                if mod(ydogFinalG(i,j),2) == 0
                    revivedHidden5(i,j) = true;
                else
                    revivedHidden5(i,j) = false;
                end
        end
    end
    revivedHidden5;
    extractHidden05 = Expand(revivedHidden5);
    %% Image 6
    revivedHidden6 = zeros(400,400);
    for i = 1:400
        for j = 1:400
              ydogFinalG(i,j) = dogFinalG(i,j); 
            ydogFinalG(i,j) = ydogFinalG(i,j) / 10;
            ydogFinalG(i,j) = floor(ydogFinalG(i,j));
            ydogFinalG(i,j) = mod(ydogFinalG(i,j),10);
                if mod(dogFinalG(i,j),2) == 0
                    revivedHidden6(i,j) = true;
                else
                    revivedHidden6(i,j) = false;
                end
        end
    end
    revivedHidden6;
    extractHidden06 = Expand(revivedHidden6); 
    %% Image 7
    revivedHidden7  = zeros(400,400);
    for i = 1:400
        for j = 1:400
            zdogFinalG(i,j) = dogFinalG(i,j); 
            zdogFinalG(i,j) = mod(zdogFinalG(i,j),100);
            zdogFinalG(i,j) = mod(zdogFinalG(i,j),10);
                if mod(zdogFinalG(i,j),3) == 0
                
                    revivedHidden7(i,j) = true;
                else
                    revivedHidden7(i,j) = false;
                end
        end
    end
    revivedHidden7;
    extractHidden07 = Expand(revivedHidden7); 
    %% Image 8
    revivedHidden8 = zeros(400,400);
    for i = 1:400
        for j = 1:400
            ydogFinalB(i,j) = dogFinalB(i,j); 
            ydogFinalB(i,j) = ydogFinalB(i,j) / 10;
            ydogFinalB(i,j) = floor(ydogFinalB(i,j));
            ydogFinalB(i,j) = mod(ydogFinalB(i,j),10);
                if mod(ydogFinalB(i,j),2) == 0
                    revivedHidden8(i,j) = true;
                else
                    revivedHidden8(i,j) = false;
                end
        end
    end
    revivedHidden8;
    extractHidden08 = Expand(revivedHidden8);
    %% Image 9
    revivedHidden9 = zeros(400,400);
    for i = 1:400
        for j = 1:400
            ydogFinalB(i,j) = dogFinalB(i,j); 
            ydogFinalB(i,j) = ydogFinalB(i,j) / 10;
            ydogFinalB(i,j) = floor(ydogFinalB(i,j));
            ydogFinalB(i,j) = mod(ydogFinalB(i,j),10);
                if mod(dogFinalB(i,j),2) == 0
                    revivedHidden9(i,j) = true;
                else
                    revivedHidden9(i,j) = false;
                end
        end
    end
    revivedHidden9;
    extractHidden09 = Expand(revivedHidden9);
    %% Image 10
    revivedHidden10 = zeros(400,400);
    for i = 1:400
        for j = 1:400
            zdogFinalR(i,j) = dogFinalB(i,j); 
            zdogFinalR(i,j) = mod(zdogFinalR(i,j),100);
            zdogFinalR(i,j) = mod(zdogFinalR(i,j),10);
                if mod(zdogFinalR(i,j),3) == 0
                    revivedHidden10(i,j) = true;
                else
                    revivedHidden10(i,j) = false;
                end
        end
    end
    revivedHidden10;
    extractHidden10 = Expand(revivedHidden10);
    
%1,2,4,5,7,8,10 still don't work


imshow(dogFinal)
figure, imshow(extractHidden01)
figure, imshow(extractHidden02)
figure, imshow(extractHidden03)
figure, imshow(extractHidden04)
figure, imshow(extractHidden05)
figure, imshow(extractHidden06)
figure, imshow(extractHidden07)
figure, imshow(extractHidden08)
figure, imshow(extractHidden09)
figure, imshow(extractHidden10)

toc
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