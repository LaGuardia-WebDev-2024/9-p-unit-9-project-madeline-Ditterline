setup = function() {
    size(600, 400);
};

//Background Images
var caveSceneImage = loadImage("https://www.shutterstock.com/image-vector/vector-illustration-background-forest-scenery-600nw-1807427365.jpg");

var forestImage = loadImage("https://t3.ftcdn.net/jpg/02/50/39/72/360_F_250397206_HuBj2V5oEytcqonzpzum4IjEjtAsZq3g.jpg");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "You've just gotten off the 7 at 42nd. [Press s for street level and a to stay underground]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 's'){
       sceneImage = forestImage;   //times square
       sceneText = "It's very crowded. [press f to continue]";
     } 
     if(key == 'a'){
      sceneImage = caveSceneImage;
      sceneText = "you pass through the hallway of despair. [press v for street level]";
    } 
    if(key == 'v'){
      sceneImage = exitImage;
      scenText = "a man needs your help getting to an ATM. [press d to help or f to ignore]";
    }
    if(key == 'd'){
      sceneImage = chasebankImage;
      sceneText = "The ATM doesn't work. He wants to go to 7/11. [press g to follow or k to run]";
    }
    if(key == 'k'){
      sceneImage = ouchImage;
      sceneText = "He notices you leaving and beats the crap out of you. [press z to restart]";
    }
    if(key == 'g'){
      sceneImage = sevenelevenImage;
      sceneText = "He's yelling, but can't see you. [press f to run]";
    }
    if(key == 'f'){
      sceneImage = ninthaveImage;
      sceneText = "It smells like urine. [press b to proceed]";
    }
    if(key == 'b'){
      sceneImage = beaconlobbyImage;
      sceneText = "You arrive at your destination! [press h to take your seat]";
    }
    if(key == 'h'){
      sceneImage = beaconauditoriumImage;
      sceneText = "The guy sitting next to you is eating M&Ms off his crotch. [press e to go home and y to ignore]";
    }
    if(key == 'e'){
      sceneImage = homeImage;
      sceneText = "You have finally made it home! This will happen again. [press z to restart]";
    }
    if(key == 'y'){
      sceneImage = outsidebeaconImage;
      sceneText = "The show was mediocre. [press u to walk to the train]";
    }
    if(key == 'u'){
      sceneImage = ninthaveImage;
      sceneText = "That guy is only wearing a clear plastic trash bag. [press n to ignore and l to look again]";
    }
    if(key == 'l'){
      sceneImage = otherninthaveImage;
      sceneText = "RUN. RUN NOW. YOU ARE BEING CHASED. [press n to run]";
    }
    if(key == 'n'){
      sceneImage = hallwayImage;
      sceneText = "You're back in the hallway of despair. [press e to continue]";
    }
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 375);
};



