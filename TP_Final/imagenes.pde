class Imagen {
  PImage [] fotos = new PImage [23];

  Imagen() { //setup
    for (int i = 1; i < 23; i++) {
      fotos [i] = loadImage ("foto" + i + ".png");
    }
    
  }
  
  
  void dibujarImg(PImage foto, float x1, float y1, float x2, float y2){

    image(foto, x1, y1, x2, y2);
  }
}
