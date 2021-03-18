 %this program resize all images in a directory to some fix size
 
 inputDir = 'catsjpg/'; % this is the input directory
 outputDir = 'catssamesize/';% after processing all the jpg images will be stored into png format in this directory
 
 loadJPG = dir([inputDir '*.jpg']); % it loads all the files into variable loadJPG
 
 for i=1:length(loadJPG)
    
    img = imread([inputDir loadJPG(i).name]); %image is loaded from the inputDir
    name = loadJPG(i).name; %copies the name of image into variable name
    fprintf('%d) loading %s \t', i, name);
    img = imresize(img,[256 256]);
    imwrite(img, [outputDir name ]);
    fprintf('%d) writing %s \n', i, name);
    
 end