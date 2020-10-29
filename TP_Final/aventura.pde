class Aventura {  //hacer una clase para pantallas, que incluya las imágenes. Cuando paso de estado en Aventura, llamo a cada Pantalla
  float posYcred;
  String estado;
  Textos textos;
  Nave nave;
  Pantallas pantalla;

  Aventura() {
    posYcred = height+100;
    imageMode ( CENTER );
    estado = "inicio";
    textos = new Textos();
    nave = new Nave();
    pantalla = new Pantallas();
  }

  void dibujarAventura() {

    if (estado.equals("inicio") ) {    ////////////////////////////// INICIO
      pantalla.inicio();
    } 

    else if (estado.equals("despegue") ) {    ////////////////////////////// PANTALLA DESPEGUE
      pantalla.despegue();
      nave.dibujarNave1();
      nave.despegar1();
    }

    else if ( estado.equals("sistema solar" ) ) {    ///////////////////////////// PANTALLA SISTEMA SOLAR
      pantalla.sistemaSolar();
    }

    else if ( estado.equals("Jupiter" ) ) {    ///////////////////////////////// HISTORIA PLANETA JUPITER
      pantalla.jupiter();
      nave.dibujarNave2();
      nave.despegar2();
    }

    else if ( estado.equals( "aterrizar" ) ) {    ////////////////////////////////// HISTORIA PLANETA JUPITER - ATERRIZAR
      pantalla.aterrizar();
    }

    else if ( estado.equals( "conocerextraterrestres" ) ) {    //////////////////////////////////// HISTORIA PLANETA JUPITER - CONOCER EXTRATERRESTRES
      pantalla.conocerExtraterrestres();
    }

    else if ( estado.equals("nuevoplaneta" ) ) {    ///////////////////////////////// HISTORIA NUEVO PLANETA ENCONTRADO -----------PANTALLA GANAR JUEGO
      pantalla.nuevoPlaneta();
    }

    else if ( estado.equals( "naverota" ) ) {    ///////////////////////////////// HISTORIA NAVE ROTA EN MARTE ------PANTALLA PERDER JUEGO
      pantalla.naveRota();
    }

    else if ( estado.equals("creditos") ) {    /////////////////////////////////// CREDITOS
      pantalla.creditos();
    } 
    
    else if ( estado.equals("juego")) {    /////////////////////////////////// Jugar???
    }
  }
//---------------------------------------------------------------------------------------------------
  void teclas() {
    //CAMBIO de ESTADO: "INICIO" -> "DESPEGUE"    
    if ( key == ENTER && estado.equals("creditos")) {
      estado = "inicio";
      nave.reiniciarNave();
      pantalla.resetCreditos();
    }

    //CAMBIO de ESTADO: "DESPEGUE" -> "SISTEMA SOLAR"
    if ( key == ' ' && estado.equals("despegue" ) ) {
      estado = "sistema solar";
    }  


    /*
  if ( key == 'a' && estado.equals( "Marte")) {
     //CAMBIO de ESTADO: "LLUVIA DE METEORITOS" -> "SEGUIR VIAJE A MARTE"
     estado = "naverota";
     }
     
     if ( key == 'b'&& estado.equals("Marte" ) ) {
     //CAMBIO de ESTADO: "LLUVIA DE METEORITOS" -> "DESVIARNOS"
     estado = "nuevoplaneta";
     }
     */

    //CAMBIO de ESTADO: "ATERRIZAR" -> "HABLAR A LOS EXTRATERRESTRES"
    if ( key == 'c' && estado.equals( "aterrizar" )) {
      estado = "conocerextraterrestres";
    }
    
    if (key == BACKSPACE && estado.equals( "conocerextraterrestres")) {
      estado = "creditos";
    }
    
  }

  void clicMouse() {
    if (mousePressed) { 
      //CUANDO: hago clic sobre el el boton de iniciar
      if ( estado.equals( "inicio" ) && mouseX > (width*0.3737) && mouseX < (width*0.625) && mouseY > (height*0.88) && mouseY < (height*0.9516) ) {
        //INICIO AVENTURA: "despegue"
        estado = "despegue";
      }

      ////CUANDO: hago clic sobre Marte
      //if ( estado.equals( "sistema solar" ) && mouseX > (width*0.3587) && mouseX < (width*0.4287) && mouseY > (height*0.403) && mouseY < (height*0.57) ) {

      //  //CAMBIO de ESTADO: "sistema solar" -> "Marte"
      //  estado = "Marte";
      //}

      //CUANDO: hago clic sobre Jupiter
      if ( estado.equals( "sistema solar" ) && mouseX > (width*0.4712) && mouseX < (width*0.6712) && mouseY > (height*0.3184) && mouseY < (height*0.65) ) {
        //CAMBIO de ESTADO: "sistema solar" -> "Jupiter"
        estado = "Jupiter";
      }

      //CUANDO: hago clic sobre el planeta Jupiter para aterrizar
      if ( estado.equals( "Jupiter" ) && mouseX > (width*0.63) && mouseX < width && mouseY > (height*0.0166) && mouseY < (height*0.9834) ) {
        //CAMBIO de ESTADO: "sistema solar" -> "Jupiter"
        estado = "aterrizar"; 
      }
    }
  }
}
