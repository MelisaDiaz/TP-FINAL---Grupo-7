
Aventura aventura;

void setup(){
 size (800, 600);
 aventura = new Aventura();
  
}

void draw(){
  aventura.dibujarAventura();
  
}

void keyPressed(){
 aventura.teclas(); 
 
}

void mousePressed(){
 aventura.clicMouse(); 
  
}
