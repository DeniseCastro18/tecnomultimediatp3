//(1)-------------------------------------------
int delay;
PFont tipog1;
String text1;
String estado;
PImage img1,img2,img3;
PImage homer, losS;
int Frameactual=0 ;
//(2)--------------------------------------
PImage casa2,homerog,fue1,fue2,fue3;
int indicaciones=0;
int textos=255;
//(3)---------------------------------------
PImage direc, flechaA,flechaH,flechaD,flama2;
//(4)------------------------------------------
PImage comed,flama1,personaje1, nube,BartS;
boolean salvado;
//(5)----------------------------------------
PImage sofa,homerP,fuego;
//(6)------------------------------------------
PImage habit;
PImage flechaAMA1,flechaAMA2,flechaAMA3;
//(7)----------------------------------------------
PImage ba1;
//(8)--------------------------------------------
PImage habB1,personaje2,mojo1;
boolean salvado2;
//(9)-------------------------------------------
PImage habL1,personaje3;
boolean salvado3;
PImage abuelo;
//(10)--------------------------------------------
PImage habHM1;
//(11)------------------------------------------
PImage periodico;
PImage lisa;
//(12)------------------------------------------
PImage sprinfil;
color amarillo=color (220, 214, 41);
//(13)------------------------------------------
float texX=700;
float texX2=750;
float texX3=780;
float texX4=810;
float texX5=840;
float texX6=870;
float texX7=900;
float texX1=0;
PImage famil;

void setup(){
  size(800,600);
  colorMode(RGB);
  background(100,100,255);
  //-------------------------------------------------CARGA DE ESTADOS----------------------------------------------------------
 //-------------(1)----------------------------------------
 tipog1= loadFont("ComicSansMS-48.vlw");
 text1="La casa Simpsons se esta incendiando, los bomberos no llegaran a tiempo. Homero debera salvar a los tres personajes que se encuentran atrapados en la casa...";
 homer= loadImage("homero corre.png");
 losS= loadImage("nombre.png");
 
frameRate(10);
img1 = loadImage("F1.png");
img2= loadImage("F2.png");
img3 = loadImage("F3.png");
//--------------(2)--------------------------------------

casa2=loadImage("casa-simpson.jpg");
homerog= loadImage("grita.png");
fue1=loadImage("fire4.png");
fue2=loadImage("fue4.png");
fue3=loadImage("Fue3.png");

//---------------(3)--------------------------------------
direc= loadImage("CasaD.jpg");
flechaA=loadImage("flecha1.png");
flechaD=loadImage("flechaD.png");
flechaH=loadImage("flechaH.png");
flama2=loadImage("flama2.png");
//---------------(4)--------------------------------------
comed=loadImage("comedor.jpg");
flama1=loadImage("fuego.png");
personaje1=loadImage("bart1.png");
nube=loadImage("nube1.png");
BartS= loadImage("BartS.png");
salvado=false;
//---------------(5)------------------------------------
sofa=loadImage("sofa.jpg");
fuego=loadImage("ff2.png");
homerP=loadImage("homer2.png");
//---------------(6)-------------------------------------
habit=loadImage("habita10.jpg");
flechaAMA1=loadImage("th(1).png");
flechaAMA2=loadImage("th(2).png");
flechaAMA3=loadImage("flechaab.png");
//---------------(7)-------------------------------------
ba1=loadImage("th.jpg");
//---------------(8)-----------------------------------
habB1=loadImage("HabitBart.jpg");
personaje2=loadImage("mojo1.png");
salvado2=false;
mojo1=loadImage("Mojo.png");
//---------------(9)-------------------------------------
habL1=loadImage("habitLisa.jpg");
personaje3=loadImage("abuelo.png");
salvado3=false;
abuelo=loadImage("Abraham_Simpson_2.png");
//---------------(10)----------------------------------
habHM1=loadImage("habit hm.jpg");
//---------------(11)---------------------------------
periodico=loadImage("periodico.png");
lisa=loadImage("Lisatriste.png");
//---------------(12)---------------------------------
sprinfil=loadImage("todos.png");
//---------------(13)--------------------------------
famil=loadImage("15.png");


 estado="presentacion";
   
   delay=0;
  
}
void draw(){ 
  println(estado);
  println(salvado2);
  if(salvado==true && salvado2==true && salvado3==true){
  estado="final2";
  }
  //(1)--------------------------------------------------------------------------------
 if(estado.equals("presentacion")){
   Frameactual=frameCount % 3;
    background(100,100,255);
 
   if(Frameactual==0){
     image(img1,0,400,400,200);
   }

   if(Frameactual==1){
     image(img2 ,0,400,400,200);
   }
   if(Frameactual==2){
     image(img3,0,400,400,200);
   }
 
image(homer,550,0,245,531);
 image(losS,0,0);
 
 textFont(tipog1);
 textSize(25);
 fill(textos);
 text(text1, 200,200,300,400);
 textSize(20);
 fill(indicaciones);
 text("[Precione enter para comenzar]",400,550);
 }
//(2)-------------------------------------------------------------------------------------------------
  else if(estado.equals("casainsendiada")){
    delay=delay+1;
     background(100,100,255);
    image(casa2,0,0);
    Frameactual=frameCount % 3;
     if(Frameactual==0){
     image(img1,0,50,200,100);
   }
   if(Frameactual==1){
     image(img2 ,0,50,200,100);
   }
   if(Frameactual==2){
     image(img3,0,50,200,100);
   }
   
   
    if(Frameactual==0){
     image(img1,300,300,200,100);
   }
   if(Frameactual==1){
     image(img2 ,300,300,200,100);
   }
   if(Frameactual==2){
     image(img3,300,300,200,100);
   }
 
    if(Frameactual==0){
     image(fue1,500,170);
   }
   if(Frameactual==1){
     image(fue2 ,500,170);
   }
   if(Frameactual==2){
     image(fue3,500,170);
   }
   
    if(Frameactual==0){
     image(img1,50,280,200,100);
   }
   if(Frameactual==1){
     image(img2 ,50,280,200,100);
   }
   if(Frameactual==2){
     image(img3,50,280,200,100);
   }
   
    if(Frameactual==0){
     image(img1,500,10,200,100);
   }
    if(Frameactual==1){
     image(img2 ,500,10,200,100);
   }
   if(Frameactual==2){
     image(img3,500,10,200,100);
   }
 
    image(homerog,350,235);
    textFont(tipog1);
    textSize(25);
    fill(textos);
    text("Homero tendra que tener mucho cuidado! es muy peligrozo...",20,450,300,550);
    textSize(20);
    fill(indicaciones);
    text("[preciona Backspace para ingresar]",0,570);
  }
  //(3)---------------------------------------------------------------------------------
    else if(estado.equals("direcciones")){
      delay=delay+1;
       background(100,100,255);
     image(direc,0,0);
      Frameactual=frameCount % 3;
     if(Frameactual==0){
     image(img1,0,390,200,100);
   }
   if(Frameactual==1){
     image(img2 ,0,390,200,100);
   }
   if(Frameactual==2){
     image(img3,0,390,200,100);
   }
   
  if(Frameactual==0){
     image(img1,530,100,100,50);
   }
   if(Frameactual==1){
     image(img2 ,530,100,100,50);
   }
   if(Frameactual==2){
     image(img3,530,100,100,50);
   }
   image(fue1,205,220);
   image(flama2,0,250);
   image(flechaA,500,200);
   image(flechaD,600,370);
   image(flechaH,100,370);
     ellipse(415,550,65,65);
     
    textFont(tipog1);
    textSize(25);
    fill(textos);
    text("Debe buscar rapido, antes de que el fuego se propague por toda la casa.",200,390,400,600);
    textSize(20);
    fill(indicaciones);
    text("[precione con mouse una de las flechas]",0,560);
    image(flechaA,390,520,50,61);
    }
  //(4)------------------------------------------------------------------------------------  
      else if(estado.equals("comedor")){
        delay=delay+1;
         background(100,100,255);
        image(comed,0,0);
        image(losS,600,0,200,50);
         Frameactual=frameCount % 3;
     if(Frameactual==0){
     image(img1,400,320,300,150);
   }
   if(Frameactual==1){
     image(img2 ,400,320,300,150);
   }
   if(Frameactual==2){
     image(img3,400,320,300,150);
   }
   
    if(Frameactual==0){
     image(img1,450,320,300,150);
   }
   if(Frameactual==1){
     image(img2 ,450,320,300,150);
   }
   if(Frameactual==2){
     image(img3,450,320,300,150);
   }
   image(flama2,-50,170);
   image(flama1,300,100);
   image(personaje1,0,200);
   image(flechaD,600,500,80,50);
   textFont(tipog1);
    textSize(20);
    fill(indicaciones);
    text("[¡busque personajes! ,si encuentras has click en el o ellos]",0,500);
    text("volver",600,560);
    
     if(salvado==true){
         image(nube,100,50);
          textFont(tipog1);
          fill(indicaciones);
          textSize(20);
          text("¡hay caramba! gracias viejo...",150,90,150,200);
          image(BartS,190,135);
  }
    
  }
  //(5)-----------------------------------------------------------------------------------------
  else if(estado.equals("sala")){
     background(100,100,255);
     image(sofa,0,0);
     image(fuego,0,0,800,480);
    textFont(tipog1);
    textSize(25);
    fill(textos);
    text("Se quemo!",300,500);
     textSize(50);
    fill(indicaciones); 
    text("¿volver a empezar?",200,300);
    textSize(40);
    text("si",430,340);
    text("no",360,340);
    image(homerP,150,440);
  
  }
  //(6)-----------------------------------------------------------------------------------------
   else if(estado.equals("escaleras")){
     delay=delay+1;
      background(100,100,255);
     image(habit,0,0);
     image(flechaAMA1,410,300);
     image(flechaAMA2,255,300);
     image(flechaAMA2,210,360);
     image(flechaAMA3,335,30);
     image(flechaAMA3,705,115,130,130);
     textFont(tipog1);
    textSize(25);
    fill(textos);
    text("¡Homero tendra que revisarlas una por una y con cuidado!",100,500);
     textSize(20);
    fill(indicaciones);
    text("[has click en las flecha para ingresar a la habitacion]",100,550);
    text("volver",740,250); 
    ellipse(640,550,80,80);  
     image(flechaAMA1,600,525,80,50);
     image(flama2,450,300);
     image(flama2,190,300,100,90);
     Frameactual=frameCount % 3;
     if(Frameactual==0){
     image(img1,275,190,200,100);
   }
   if(Frameactual==1){
     image(img2 ,275,190,200,100);
   }
   if(Frameactual==2){
     image(img3,275,190,200,100);
     }
   }
 //(7)------------------------------------------------------------------------------------
    else if(estado.equals("baño")){
      delay=delay+1;
       background(100,100,255);
     image(ba1,0,0);
     image(fuego,0,0,800,480);
    textFont(tipog1);
    textSize(25);
    fill(textos);
    text("Se quemo!",300,500);
     textSize(50);
    text("¿volver a empezar?",200,300);
    textSize(40);
    fill(indicaciones);
    text("si",430,340);
    text("no",360,340);
    image(homerP,150,440);
    }
//(8)----------------------------------------------------------------------------------------
    else if(estado.equals("habit1")){
      delay=delay+1;
       background(100,100,255);
     image(habB1,0,0);
     image(losS,600,0,200,50);
       Frameactual=frameCount % 3;
     if(Frameactual==0){
     image(img1,370,325,300,150);
   }
   if(Frameactual==1){
     image(img2 ,370,325,300,150);
   }
   if(Frameactual==2){
     image(img3,370,325,300,150);
   }
   
    if(Frameactual==0){
     image(img1,450,325,300,150);
   }
   if(Frameactual==1){
     image(img2 ,450,325,300,150);
   }
   if(Frameactual==2){
     image(img3,450,325,300,150);
   }
   image(flama2,450,200);
     image(flama2,405,195,100,90);
   image(personaje2,150,260);
      if(Frameactual==0){
     image(img1,500,325,300,150);
   }
   if(Frameactual==1){
     image(img2 ,500,325,300,150);
   }
   if(Frameactual==2){
     image(img3,500,325,300,150);
   }
    textFont(tipog1);
    textSize(20);
    fill(indicaciones);
    text("[busque personajes si encuentras has click en el o ellos]",0,500);
    text("volver",600,560);
   image(flama2,450,200);
   image(flama2,405,195,100,90);
   image(personaje2,150,260);
   image(flechaD,600,500,80,50);
    
    
    if(salvado2==true){
         image(nube,200,100);
          textFont(tipog1);
          fill(indicaciones);
          textSize(20);
          text("¡@ah ahia@!...",250,150,300,200);
          image(mojo1,290,180);
    }
    }
 //(9)-------------------------------------------------------------------------------------
    else if(estado.equals("habit2")){
      delay=delay+1;
       background(100,100,255);
     image(habL1,0,0);
     image(flama1,130,250,500,250);
     image(personaje3,200,150); 
     textFont(tipog1);
    textSize(20);
    fill(indicaciones);
    text("[busque personajes si encuentras has click en el o ellos]",0,500);
    text("volver",35,560);
    image(flechaH,10,500,80,50);
    
     if(salvado3==true){
         image(nube,300,0);
          textFont(tipog1);
          fill(indicaciones);
          textSize(20);
          text("¡Hijo!    pense que se olvidarian de mi...",330,30,200,100);
          image(abuelo,390,70);
    }
   }
   //(10)------------------------------------------------------------------------------------
    else if(estado.equals("habit3")){
      delay=delay+1;
       background(100,100,255);
     image(habHM1,0,0);
     fill(100,100,255);
    rect(0,500,800,600);
    textFont(tipog1);
    textSize(20);
    fill(indicaciones);
    text("[busque personajes si encuentras has click en el o ellos]",0,520);
    text("volver",600,560);
    image(flechaD,600,500,80,50);
    image(flama2,590,330);
    image(flama1,270,105,500,250);
    image(losS,600,0,200,50);
    }
    //(11)----------------------------------------------------------------------------------
    else if(estado.equals("final1")){
      delay=delay+1;
       background(100,100,255);
      image(periodico,0,0);
      image(lisa,540,350);
      image(losS,600,0,200,50);
      textFont(tipog1);
      textSize(20);
      fill(indicaciones);
      text("[preciona enter para finalizar]",500,590);
      textSize(25);
      fill(textos);
      text("Al dia siguente Lisa Simpsons les brindo un homenaje a sus seres queridos por el trajico decenlase del incendio, deviso a que homero se quemo al intentar rescatar a sus familiares.",20,400,600,600);
    }
    //(12)-------------------------------------------------------------------------------------
    else if(estado.equals("final2")){
      delay=delay+1;
       background(100,100,255);
      image(sprinfil,100,150);
      textFont(tipog1);
      textSize(20);
      fill(indicaciones);
      text("[preciona Backspace para finalizar]",450,590);
      textSize(30);
      fill(amarillo);
      text("¡Homero logro salvar a su familia!",100,50,600,200);
       textSize(25);
      fill(textos);
      text("El grandioso acto de Homero se difundio por todo Sprinfil, lo que genero que homero sea considerado un heroe para la ciudad ,pero principalmente para su familia.",20,100,500,400);
    }
    //(13)---------------------------------------------------------------------------------------------
  else if(estado.equals("creditos")){
    delay=delay+1;
      background(100,100,255);
   image(famil,20,300);
   image(losS,0,0);
   textFont(tipog1);
   textSize(35);
   fill(amarillo);
   text("¡La aventura a finalizado!", 370,texX,520,texX1);
   textSize(20);
   fill(textos);
   text("Facultad de Arte UNLP",450,texX2,550,texX1);
   text("Tecno Multimedia_1",450,texX3,550,texX1);
   text("Prof: Matias Jauregui",450,texX4,550,texX1);
   text("Alumna: Castro Denise",450,texX5,550,texX1);
   text("Comision 2",450,texX6,550,texX1);
   textSize(25);
   text("¡GRACIAS!",450,texX7,550,texX1);
    textSize(20);
    fill(indicaciones);
    text("[presiona barra espaciadora para reiniciar]",0,590);
  texX=texX-4;
  texX1=texX1-4;
  texX2=texX2-4;
  texX3=texX3-4;
  texX4=texX4-4;
  texX5=texX5-4;
  texX6=texX6-4;
  texX7=texX7-4;
  }
    }

void keyPressed(){
  //cambio de : (presentacion) >> (casaincendiada)------------------------------
 
  if(keyCode==ENTER && estado.equals("presentacion")){
  estado = "casainsendiada";
   }
 
 //cambio de : (casaincendiada) >> (direcciones)-------------------------------

  if(keyCode==BACKSPACE && estado.equals("casainsendiada")&& delay>5){
    estado="direcciones";
  
}
 //cambio de :(final1) >> (creditos)--------------------------------------------
   if(keyCode==ENTER && estado.equals("final1")){
     estado="creditos";
         salvado=false;
     salvado2=false;
     salvado3=false;
     delay=0;
  }
 
   //cambio de :(final2) >> (creditos)--------------------------------------------
 
   if(keyCode==BACKSPACE && estado.equals("final2")){
     estado="creditos";
     salvado=false;
     salvado2=false;
     salvado3=false;
     delay=0;
  }
  
 //REINICIO ---cambio de :(creditos) >> (presentacion)--------------------------
 
   if(key==' '&& estado.equals("creditos")&& delay>5){
     estado= "presentacion";
     salvado=false;
     salvado2=false;
     salvado3=false;
   
 } 
}
void mouseClicked(){
  //----------------------------------------boton en (direcciones)-----------------------------------------------------------------
  //CUANDO :hace click en flecha derecha
  if(estado.equals("direcciones")){
  if(mouseY>370 && mouseY<370+81 && mouseX>600 && mouseX<600+100&& delay>5){
    estado = "comedor";
    delay=0;
  }

  //CUANDO: hace click en flech izquierda 
  if(mouseY>370 && mouseY<370+81 && mouseX>100 && mouseX<100+100&& delay>5){
   estado = "sala"; 
   delay=0;
  }
  
  //CUANDO: hace click en flecha arriba
  if(mouseY>200 && mouseY<200+124 && mouseX>500 && mouseX<500+100&& delay>5) {
    estado="escaleras";
    delay=0;
  }
  }
  //----------------------------------------boton en comedor----------------------------------
  if(estado.equals("comedor")){
    if(mouseY>500 && mouseY<500+50 && mouseX>600 && mouseX<600+80&& delay>5){
    estado = "direcciones";
    delay=0;
    }
    if(mouseY>200 && mouseY< 200+223 && mouseX>0 && mouseX <0+150&& delay>5){
      salvado=true;}
  }
  
  
  //------------------------------------------------botones en sala-------------------------
  if(estado.equals("sala")){
     if(mouseY>320 && mouseY<320+40 && mouseX>410 && mouseX<410+40){
       estado="presentacion";
       salvado=false;
     salvado2=false;
     salvado3=false;
      
}
  else if(mouseY>320 && mouseY<320+40 && mouseX>340 && mouseX<340+40){
   estado="final1"; 
   delay=0;
  }
}
//------------------------------------------------botones de escalera-------------------------------
 if(estado.equals("escaleras")){
   if(mouseY>115 && mouseY<115+130 && mouseX>705 && mouseX<705+130&& delay>5){
       estado="direcciones";
   }
   if(mouseY>300 && mouseY<300+100 && mouseX>255 && mouseX<255+100&& delay>5){
       estado="habit1";
       delay=0;
     
   }
   if(mouseY>300 && mouseY<300+100 && mouseX>410 && mouseX<410+100&& delay>5){
       estado="habit2";
       delay=0;
   }
   if(mouseY>360 && mouseY<360+100 && mouseX>210 && mouseX<210+100&& delay>5){
       estado="habit3";
       delay=0;
   }
   if(mouseY>30 && mouseY<30+100 && mouseX>335 && mouseX<335+100 && delay>5){
       estado="baño";
       delay=0;
   }
 }
 if(estado.equals("baño")){
     if(mouseY>320 && mouseY<320+40 && mouseX>410 && mouseX<410+40 && delay>5){
       estado="presentacion";
       salvado=false;
     salvado2=false;
     salvado3=false;
       delay=0;
}
  else if(mouseY>320 && mouseY<320+40 && mouseX>340 && mouseX<340+40 ){
   estado="final1"; 
  }
}
 //---------------------------------------botones en habit1------------------------------
  
    if(mouseY>500 && mouseY<500+50 && mouseX>600 && mouseX<600+80 && estado.equals("habit1")&& delay>5){
    estado = "escaleras";
    delay=0;
    }
    if(mouseY>260 && mouseY< 260+185 && mouseX>150 && mouseX <150+185 && estado.equals("habit1") && delay>5){
      salvado2=true;}



   
   
   
 //--------------------------------------botones en habit2---------------------------      
      if(estado.equals("habit2")){
    if(mouseY>500 && mouseY<500+50 && mouseX>10 && mouseX<10+80&& delay>5){
    estado = "escaleras";
    delay=0;
    } 
     if(mouseY>150 && mouseY<150+162 && mouseX>200 && mouseX <200+150&& delay>5){
      salvado3=true;}
}
   
//----------------------------------------boton en habit3-----------------------------
 if(estado.equals("habit3")){  
    if(mouseY>500 && mouseY<500+50 && mouseX>600 && mouseX<600+80&& delay>5){
    estado = "escaleras";
    delay=0;
    }
 }
}
