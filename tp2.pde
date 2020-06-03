import ddf.minim.*;

Minim minim;
AudioPlayer player;
//variables "pantalla"1-------------------------------
PImage img;
PFont tipog;
float posTX=30;
float posTX2=60;
float posY1=-1850;
float posY2=2850;
//variables "pantalla"2------------------------------

PImage mufasa;
PImage SyN;
PImage TyP;
PImage sarabi;
PImage rafiki;
PImage zazu;
PImage ienas;
PImage scar;
float imgY=-1300;
float imgY1=-1550;
float imgY2=-1800;
float imgY3=-2100;

float imgY4=2000;
float imgY5=2300;
float imgY6=2650;
float imgY7=2850;

//variable "pantalla" 3 creditos---------------------
PFont tipogcred;
String creditos;
String creditos2;
float poscred=4900;
float poscred1=0;
float poscred2=4950;
float poscred3=0;
PImage imgcred;
float posimg=4300;

void setup(){
 
  minim=new Minim(this);
  player = minim.loadFile("El Rey León - El Ciclo Sin Fin.mp3.mp3");
  player.setGain(-10);
  player.loop();
  
   size(1000,600);
   rectMode(CENTER);
   
   //cargar "pantalla" 1--------------------------
   
  img=loadImage("fondo.png");
  tipog=loadFont("PerpetuaTitlingMT-Bold-150.vlw");


  //cargar "pantalla" 2----------------------------
  
  mufasa=loadImage("mufasa.png");
  SyN=loadImage("sykchicos.png");
  TyP=loadImage("TYM.png");
 sarabi=loadImage("sarabi.png");
 rafiki=loadImage("mono1.png");
 zazu=loadImage("zazu.png");
 ienas=loadImage("ienas.png");
 scar=loadImage("SCAR.png");
 
 //cargar "pantalla" 3----------------------------
 
 tipogcred=loadFont("BaskOldFace-76.vlw");
 creditos="CREDITOS ";
 creditos2="dirigido por  ROGER_ALLERS  Y  ROB_MINKIFF  pordicido por  DON_HAHN guion por  IRENE_MECCHI  Y  JONATHAN_ROBERTS  Y  LINDA_WOOLVERTON  canciones de  TIM_RICE Y  ELTON_JOHN  partitura original  compuesta y arreglada por  HANS_ZIMMER  productores ejecutivos  THOMAS_SCHUMACHER  Y  SARAH_McARTHUR   ----------supervisores artísticos----------  historia por BRENDA_CHAPMAN  diseño por DAN _ST._PIERRE  antecedente por DOUG_BAALL  limpiar por VERA_LANPJER  efecto viual por SCOTT_SANTORO  imágenes de gráficos por computadora por SCOTT_F._JOHNSTON  Es una película animada, producida por Walt Disney Feature Animation y distribuida por Walt Disney Pictures. Es la trigésima segunda cinta en la serie Walt Disney Animated Classics y se realizó en un período conocido como el Renacimiento de Disney.La cinta fue lanzada el 15 de junio de 1994";
 imgcred=loadImage("img final.jpg");
}

void draw(){
  background(0);
  //fondo--
  image(img,0,0,width,height);
  //---------------------------------intro con texto-----------------------------------------------
  
  textFont(tipog);
  fill(0);
  textSize(posTX);
  textAlign(CENTER);
  text("El",520,125);
  
  
  fill(0);
  textSize(posTX2);
  textAlign(CENTER);
  text("rey león",520,200);
 
  line(350,120,500,120);
  line(530,120,680,120);
  
 //---------------------------------cambio de pantalla--------------------------------------------- 
  
fill(0);
rect(posY1,150,3000,300);

fill(0);
rect(posY2,450,3000,300);


posY1=posY1+6;
posY2=posY2-6;
posTX=posTX+0.04;
posTX2=posTX2+0.04;



//---------------------------------------personajes------------------------------------------------
//personajes de arriba-----------

image(mufasa,imgY,80,250,239);
image(SyN,imgY1,90,208,180);
image(TyP,imgY2,20,208,297);
image(sarabi,imgY3,90,300,200);

//personajes de abajo------------
image(rafiki,imgY4,320,256,278);
image(scar,imgY5,440,360,114);
image(ienas,imgY6,420,200,163);
image(zazu,imgY7,420,125,125);


imgY=imgY+6.5;
imgY1=imgY1+6.5;
imgY2=imgY2+6.5;
imgY3=imgY3+6.5;

imgY4=imgY4-6.5;
imgY5=imgY5-6.5;
imgY6=imgY6-6.5;
imgY7=imgY7-6.5;

//---------------------------------------creditos--------------------------------------------------
textAlign(CENTER);

textFont(tipogcred);
fill(200,230,0);
textSize(40);
text(creditos,500,poscred,500,poscred1);

textSize (30);
text(creditos2,500,poscred2,500,poscred3);

image(imgcred,350,posimg,266,100);

poscred=poscred-7;
poscred1=poscred1-7;
poscred2=poscred2-7;
poscred3=poscred3-7;
posimg=posimg-7;

}
