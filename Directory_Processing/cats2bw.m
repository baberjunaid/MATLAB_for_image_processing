 %this program converts all images in a directory to PNG format
 % in linux we can all without loading the images using OS executable
 % commands such as Convert. But we will load every image and then save
 % into required format
 inputDir = 'catsjpg/'; % this is the input directory
 outputDir = 'catsbw/';% after processing all the jpg images will be stored into png format in this directory
 
 loadJPG = dir([inputDir '*.jpg']); % it loads all the files into variable loadJPG
 
 for i=1:length(loadJPG)
    
    img = imread([inputDir loadJPG(i).name]); %image is loaded from the inputDir
    name = loadJPG(i).name; %copies the name of image into variable name
    fprintf('%d) loading %s \t', i, name);
    img = im2bw(img);
    imwrite(img, [outputDir name]);
    fprintf('%d) writing %s  \n', i, name);
    
 end