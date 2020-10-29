/*
Tecno Multimedia 1: TP Final - Aventura gráfica y juego con objetos
Comisión 2 - Grupo 7 - Jorgelina Reynoso y Melisa Díaz

*/
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
