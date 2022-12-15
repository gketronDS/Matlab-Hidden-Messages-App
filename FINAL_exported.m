classdef FINAL_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                      matlab.ui.Figure
        Image                         matlab.ui.control.Image
        Image_2                       matlab.ui.control.Image
        UIAxes2                       matlab.ui.control.UIAxes
        Embed1Button                  matlab.ui.control.Button
        LoadHostImageButton           matlab.ui.control.Button
        SaveimageButton               matlab.ui.control.Button
        Recovery1Button               matlab.ui.control.Button
        UIAxes4                       matlab.ui.control.UIAxes
        HowtoGetStartedTextAreaLabel  matlab.ui.control.Label
        HowtoGetStartedTextArea       matlab.ui.control.TextArea
        Image2                        matlab.ui.control.Image
        UIAxes                        matlab.ui.control.UIAxes
        RestartButton                 matlab.ui.control.Button
        LoadSecretImagesButton        matlab.ui.control.Button
        EmbeddedImageButton           matlab.ui.control.Button
        TeamSteganosaurusLabel        matlab.ui.control.Label
    end

    
    properties (Access = public)
        rdogR
        rdogB
        rdogG
        dogR
        dogG
        dogB
        ydogR
        ydogB
        ydogG
         % Description
    end
    
    
    methods (Access = private)
         
        
       
    end
    
    methods (Access = public)
        
        
        function results = func(app)
            
            %Intermediary Functions
rdogR = mod(dogR, 100); 
rdogB = mod(dogB, 100); 
rdogG = mod(dogG, 100); 
                      % Y value Functions 
ydogR = floor(rdogR ./10);
ydogB = floor(rdogB ./10); 
ydogG = floor(rdogG ./10);


dogImage = imread('dogImage.png')
dogR = dogImage(:,:,1);
dogG = dogImage(:,:,2);
dogB = dogImage(:,:,3);

           

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
        end
        
        function [BW] = Flatten(hidden01)
I = imread(X) %returns matrix of image
BW = im2bw(I,0.4) %luminance level using im2bw
 %displays hidden 1, necessary for this function?  
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            [icondata,iconcmap] = imread('dino.png'); 
h=msgbox({'Team Steganosaurus welcomes you!'; 'Read instructions to get started'},'Hello','custom',icondata,iconcmap);
S(1) = load('gong');
sound(S(1).y,S(1).Fs)

        end

        % Callback function
        function LoadSecretImageButton_2Pushed(app, event)
I = imread(uigetfile({'*.*;*.jpg;*.png;*.bmp;*.oct'}, 'Select File to Open')); %returns matrix of image
BW = im2bw(I,0.4); %luminance level using im2bw
newImage = uint8(255 * BW);
% Display image 
I = imshow(newImage, 'Parent', app.UIAxes2, ...
    'XData', [1 app.UIAxes2.Position(3)], ...
    'YData', [1 app.UIAxes2.Position(4)]);


        end

        % Button pushed function: Embed1Button
        function Embed1ButtonPushed(app, event)
          
  S(1) = load('handel');
sound(S(1).y,S(1).Fs)          
            
            %% Functions
          
         dogImage = getimage(app.UIAxes) %read image from axes 1&2, display on axes 4
            flatHidden01 = getimage(app.UIAxes2)
            flatHidden02 = getimage(app.UIAxes2)
            flatHidden03 = getimage(app.UIAxes2)
            flatHidden04 = getimage(app.UIAxes2)
            flatHidden05 = getimage(app.UIAxes2)
            flatHidden06 = getimage(app.UIAxes2)
            flatHidden07 = getimage(app.UIAxes2)
            flatHidden08 = getimage(app.UIAxes2)
            flatHidden09 = getimage(app.UIAxes2)
            flatHidden10 = getimage(app.UIAxes2)
            
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

app.rdogR = mod(app.dogR, 100); 
app.rdogB = mod(app.dogB, 100); 
app.rdogG = mod(app.dogG, 100); 
                      % Y value Functions 
ydogR = floor(app.rdogR ./10);
app.ydogB = floor(app.rdogB ./10); 
app.ydogG = floor(app.rdogG ./10);


dogImage = imread('dogImage.png')
app.dogR = dogImage(:,:,1);
app.dogG = dogImage(:,:,2);
app.dogB = dogImage(:,:,3);

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

dogR = dogImage(:,:,1);
dogB = dogImage(:,:,3);
dogG = dogImage(:,:,2);
%Set message as logic matrix
flatHidden01 = im2bw(hidden01, 0.4);
flatHidden02 = im2bw(hidden02, 0.4);
flatHidden03 = im2bw(hidden03, 0.4);
flatHidden04 = im2bw(hidden04, 0.4);
flatHidden05 = im2bw(hidden05, 0.4);
flatHidden06 = im2bw(hidden06, 0.4);
flatHidden07 = im2bw(hidden07, 0.4);
flatHidden08 = im2bw(hidden08, 0.4);
flatHidden09 = im2bw(hidden09, 0.4);
flatHidden10 = im2bw(hidden10, 0.4);

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
                        if divby2 == 1 % must maintain odd value
                            if mod(dogR(i,j),3) == 0
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
                            if mod(dogR(i,j),3) == 0
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
                        if divby2 == 1 %odd value must be maintained
                            if mod(dogR(i,j),3) == 1
                                ydogR2dogR(i,j) = dogR(i,j) + 2; %check that dogR -2 wont change tens place
                                ydogR2dogR(i,j) = ydogR2dogR(i,j) ./ 10;
                                ydogR2dogR(i,j) = floor(ydogR2dogR(i,j));
                                if mod(ydogR2dogR(i,j),10) == ydogR(i,j)
                                    dogR(i,j) = dogR(i,j) + 2;
                                else
                                    dogR(i,j) = dogR(i,j) - 2;
                                end
                            elseif mod(dogR(i,j),3) == 2
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
imshow(dogFinal, 'Parent', app.UIAxes2)          


        end

        % Button pushed function: LoadHostImageButton
        function LoadHostImageButtonPushed(app, event)
            hostImage = imread(uigetfile({'*.*;*.jpg;*.png;*.bmp;*.oct'}, 'Select File to Open'));
            imshow(hostImage, 'Parent', app.UIAxes); 
        end

        % Button pushed function: SaveimageButton
        function SaveimageButtonPushed(app, event)
         % Create a temporary figure with axes.
            [FileName, PathName] = uiputfile('*.png','*.tif', 'Save As');
 Name                 = fullfile(PathName,FileName);
 % get the handle to the child object axes2
 hChildAxes2 = get(app.UIAxes2,'Children');
 % assume one child only and grab the image data
 W = get(hChildAxes2(1),'CData');
 % write the image to file
  imwrite(W, Name, 'tif');         
        end

        % Button pushed function: Recovery1Button
        function Recovery1ButtonPushed(app, event)
            %% Uncode Hidden Variables
            dogFinal = getimage(app.UIAxes4)
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
                if mod(ydogFinalR(i,j),2) == 0 %Checks if the tens place is a mulitple of two and creates a recalled index for display
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
                if mod(ydogFinalR(i,j),3) == 0 %Checks if the tens place is a multiple of 3 and creates a true false matrix for display
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
                if mod(dogFinalR(i,j),2) == 0 %Checks if the ones place is a miultiple of 2. 
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
                if mod(zdogFinalR(i,j),3) == 0 %Checks if the ones place is a multiple of 3.
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
    
% 4 7 and 10 still don't work %¯\_(ÿ)_/¯
% ¯\_(ÿ)_/¯¯\_(ÿ)_/¯¯\_(ÿ)_/¯¯\_(ÿ)_/¯¯\_(ÿ)_/¯

X = montage({extractHidden01,extractHidden02,extractHidden03,extractHidden04, extractHidden05, extractHidden06, extractHidden07, extractHidden08, extractHidden09, extractHidden10})
            

 
 
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

        end

        % Close request function: UIFigure
        function UIFigureCloseRequest(app, event)
            delete(app)
            [icondata,iconcmap] = imread('dino.png'); 
h=msgbox({'Thanks for watching!'; 'From Team Steganosarus'},'Goodbye','custom',icondata,iconcmap);
S(1) = load('gong');
sound(S(1).y,S(1).Fs)

        end

        % Image clicked function: Image2
        function Image2Clicked(app, event)
            h=msgbox({'Team Steganosarus wishes you happy holidays!'});
        end

        % Button pushed function: RestartButton
        function RestartButtonPushed(app, event)
            cla(app.UIAxes) %allows user to start over and load new images
            cla(app.UIAxes2)
            cla(app.UIAxes4)
        end

        % Button pushed function: LoadSecretImagesButton
        function LoadSecretImagesButtonPushed(app, event)
            embedImage1 = imread('hidden01.png');
            
             embedImage2 = imread('hidden02.png')
            
             embedImage3 = imread('hidden03.png');
            
             embedImage4 = imread('hidden04.png');
            
             embedImage5 = imread('hidden05.png');
            
             embedImage6 = imread('hidden06.png');
            
            embedImage7 = imread('hidden07.png');
            
            embedImage8 = imread('hidden08.png');
            
            embedImage9 = imread('hidden09.png');
                        
            embedImage10 = imread('hidden10.png');

            
            multi = cat(3,embedImage1,embedImage2,embedImage3,embedImage4, embedImage5, embedImage6, embedImage7, embedImage8, embedImage9, embedImage10);
            img = montage(multi)
            
            
        end

        % Button pushed function: EmbeddedImageButton
        function EmbeddedImageButtonPushed(app, event)
            newImage = imread(uigetfile({'*.*;*.jpg;*.png;*.bmp;*.oct'}, 'Select File to Open'));
            imshow(newImage, 'Parent', app.UIAxes4); 
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'UI Figure';
            app.UIFigure.CloseRequestFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);

            % Create Image
            app.Image = uiimage(app.UIFigure);
            app.Image.Position = [-29 121 704 360];
            app.Image.ImageSource = 'Fl0Ky5.png';

            % Create Image_2
            app.Image_2 = uiimage(app.UIFigure);
            app.Image_2.Position = [-29 1 704 360];
            app.Image_2.ImageSource = 'Fl0Ky5.png';

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.UIFigure);
            title(app.UIAxes2, '')
            xlabel(app.UIAxes2, '')
            ylabel(app.UIAxes2, '')
            app.UIAxes2.PlotBoxAspectRatio = [1 1 1];
            app.UIAxes2.Visible = 'off';
            app.UIAxes2.BackgroundColor = [1 1 1];
            app.UIAxes2.Interruptible = 'off';
            app.UIAxes2.Position = [223 109 200 188];

            % Create Embed1Button
            app.Embed1Button = uibutton(app.UIFigure, 'push');
            app.Embed1Button.ButtonPushedFcn = createCallbackFcn(app, @Embed1ButtonPushed, true);
            app.Embed1Button.BackgroundColor = [1 0 0];
            app.Embed1Button.FontName = 'Comic Sans MS';
            app.Embed1Button.FontColor = [1 1 1];
            app.Embed1Button.Position = [271 302 100 25];
            app.Embed1Button.Text = '3. Embed 1';

            % Create LoadHostImageButton
            app.LoadHostImageButton = uibutton(app.UIFigure, 'push');
            app.LoadHostImageButton.ButtonPushedFcn = createCallbackFcn(app, @LoadHostImageButtonPushed, true);
            app.LoadHostImageButton.FontName = 'Comic Sans MS';
            app.LoadHostImageButton.Position = [48 302 124 25];
            app.LoadHostImageButton.Text = '1. Load Host Image';

            % Create SaveimageButton
            app.SaveimageButton = uibutton(app.UIFigure, 'push');
            app.SaveimageButton.ButtonPushedFcn = createCallbackFcn(app, @SaveimageButtonPushed, true);
            app.SaveimageButton.BackgroundColor = [0.651 0.651 0.651];
            app.SaveimageButton.FontName = 'Comic Sans MS';
            app.SaveimageButton.FontWeight = 'bold';
            app.SaveimageButton.FontColor = [1 1 1];
            app.SaveimageButton.Position = [270 73 104 25];
            app.SaveimageButton.Text = '4. Save image ';

            % Create Recovery1Button
            app.Recovery1Button = uibutton(app.UIFigure, 'push');
            app.Recovery1Button.ButtonPushedFcn = createCallbackFcn(app, @Recovery1ButtonPushed, true);
            app.Recovery1Button.BackgroundColor = [1 0 0];
            app.Recovery1Button.FontName = 'Comic Sans MS';
            app.Recovery1Button.FontColor = [1 1 1];
            app.Recovery1Button.Position = [478 73 101 25];
            app.Recovery1Button.Text = '6. Recovery 1';

            % Create UIAxes4
            app.UIAxes4 = uiaxes(app.UIFigure);
            title(app.UIAxes4, '')
            xlabel(app.UIAxes4, '')
            ylabel(app.UIAxes4, '')
            app.UIAxes4.DataAspectRatio = [1 1 1];
            app.UIAxes4.PlotBoxAspectRatio = [1 1 1];
            app.UIAxes4.Visible = 'off';
            app.UIAxes4.BackgroundColor = [1 1 1];
            app.UIAxes4.Position = [434 109 190 188];

            % Create HowtoGetStartedTextAreaLabel
            app.HowtoGetStartedTextAreaLabel = uilabel(app.UIFigure);
            app.HowtoGetStartedTextAreaLabel.BackgroundColor = [0.302 0.7451 0.9333];
            app.HowtoGetStartedTextAreaLabel.HorizontalAlignment = 'right';
            app.HowtoGetStartedTextAreaLabel.FontName = 'Comic Sans MS';
            app.HowtoGetStartedTextAreaLabel.FontWeight = 'bold';
            app.HowtoGetStartedTextAreaLabel.FontColor = [1 1 1];
            app.HowtoGetStartedTextAreaLabel.Position = [27 430 123 22];
            app.HowtoGetStartedTextAreaLabel.Text = 'How to Get Started';

            % Create HowtoGetStartedTextArea
            app.HowtoGetStartedTextArea = uitextarea(app.UIFigure);
            app.HowtoGetStartedTextArea.FontName = 'Courier';
            app.HowtoGetStartedTextArea.FontSize = 10;
            app.HowtoGetStartedTextArea.FontWeight = 'bold';
            app.HowtoGetStartedTextArea.Position = [161 339 354 121];
            app.HowtoGetStartedTextArea.Value = {'1. Click on "Load Host Image" to select image to embed another image in'; '2. Click on "Load Secret Image" to select all ten image to embed in the host image'; '3. Click on the Embed 1 Button to embed all ten images into the host image.'; '4. Click on Save Image and name it '; '5. Load your saved image by clicking on Embedded Image '; '6. Press Recovery 1 to see all the images that were in your original photo'};

            % Create Image2
            app.Image2 = uiimage(app.UIFigure);
            app.Image2.ImageClickedFcn = createCallbackFcn(app, @Image2Clicked, true);
            app.Image2.Position = [514 336 117 126];
            app.Image2.ImageSource = 'dinobackground.gif';

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            title(app.UIAxes, '')
            xlabel(app.UIAxes, '')
            ylabel(app.UIAxes, '')
            app.UIAxes.PlotBoxAspectRatio = [1 1 1];
            app.UIAxes.Visible = 'off';
            app.UIAxes.BackgroundColor = [1 1 1];
            app.UIAxes.Interruptible = 'off';
            app.UIAxes.Position = [11 109 198 188];

            % Create RestartButton
            app.RestartButton = uibutton(app.UIFigure, 'push');
            app.RestartButton.ButtonPushedFcn = createCallbackFcn(app, @RestartButtonPushed, true);
            app.RestartButton.FontName = 'Comic Sans MS';
            app.RestartButton.Position = [38 397 100 25];
            app.RestartButton.Text = 'Restart';

            % Create LoadSecretImagesButton
            app.LoadSecretImagesButton = uibutton(app.UIFigure, 'push');
            app.LoadSecretImagesButton.ButtonPushedFcn = createCallbackFcn(app, @LoadSecretImagesButtonPushed, true);
            app.LoadSecretImagesButton.FontName = 'Comic Sans MS';
            app.LoadSecretImagesButton.Position = [34.5 73 143 25];
            app.LoadSecretImagesButton.Text = '2. Load Secret Images';

            % Create EmbeddedImageButton
            app.EmbeddedImageButton = uibutton(app.UIFigure, 'push');
            app.EmbeddedImageButton.ButtonPushedFcn = createCallbackFcn(app, @EmbeddedImageButtonPushed, true);
            app.EmbeddedImageButton.FontName = 'Comic Sans MS';
            app.EmbeddedImageButton.Position = [466 302 126 25];
            app.EmbeddedImageButton.Text = '5. Embedded Image';

            % Create TeamSteganosaurusLabel
            app.TeamSteganosaurusLabel = uilabel(app.UIFigure);
            app.TeamSteganosaurusLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.TeamSteganosaurusLabel.FontName = 'Phosphate';
            app.TeamSteganosaurusLabel.FontSize = 30;
            app.TeamSteganosaurusLabel.Position = [83 21 432 38];
            app.TeamSteganosaurusLabel.Text = '  T e a m    S t e g a n o s a u r u s';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = FINAL_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end