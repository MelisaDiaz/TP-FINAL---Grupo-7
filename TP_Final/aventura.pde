class Aventura {
  float posYcred;
  String estado;
  Textos textos;
  Imagen imagen;
  Nave nave;

  Aventura() {
    posYcred = height+100;
    imageMode ( CENTER );
    estado = "inicio";
    textos = new Textos();
    imagen = new Imagen();
    nave = new Nave();
  }

  void dibujarAventura() {

    if (estado.equals("inicio") ) {
      imagen.dibujarImg (imagen.fotos[1], (width/2), (height/3), width, height ); //fondo
      imagen.dibujarImg (imagen.fotos[2], (width/2), ((height*3)/4), width, height/4 ); //pastitos
      imagen.dibujarImg (imagen.fotos[2], (width/2), ((height*5)/6), width, height/4 );
      imagen.dibujarImg (imagen.fotos[2], (width/2), ((height*5.5)/6), width, height/4 );
      imagen.dibujarImg (imagen.fotos[3], (width/4), ((height*7)/12), ((width*9)/16), ((height*9)/16) ); //nave espacial
      imagen.dibujarImg (imagen.fotos[4], (width/2), ((height*43)/60), (width/4), (height/3) ); //astronauta
      imagen.dibujarImg (imagen.fotos[5], (width/2), ((height*11)/12), (width/4), (height/15) ); //clic aquí para iniciar
      textos.globodialogo((width*0.655), (height*0.459), (width*0.4), #E6E62D);
      textos.dibujarTextos(textos.texto[0], (width*0.295), (height*0.14), textos.Titulo, (width*0.0875), 0); //titulos
      textos.dibujarTextos(textos.texto[0], (width*0.3), (height*0.13), textos.Titulo, (width*0.0875), #E6E62D );
      textos.dibujarTextos(textos.texto[2], (width*0.50875), (height*0.41), textos.Dialogo, (width*0.02), 0); //intro
    } 

    ////////////////////////////// PANTALLA DESPEGUE
    else if (estado.equals("despegue") ) {
      imagen.dibujarImg (imagen.fotos[6], width/2, height/2, width, height ); //espacio
      imagen.dibujarImg (imagen.fotos[7], 0, height, width*0.48, height*0.64 ); //planeta Tierra
      nave.dibujarNave1();
      nave.despegar1();
      imagen.dibujarImg (imagen.fotos[9], ((width*9)/16), (height*5)/6, width/8, height/6 ); //astronauta

      textos.globodialogo((width*0.67875), (height*0.6), (width*0.325), #E6E62D);
      textos.dibujarTextos(textos.texto[3], (width*0.57), (height*0.54), textos.Dialogo, (width*0.01875), 0);
    }

    ///////////////////////////// PANTALLA SISTEMA SOLAR
    else if ( estado.equals("sistema solar" ) ) {
      background ( 0 );
      imagen.dibujarImg (imagen.fotos[10], width/2, height/2, (width*9)/8, (height*5)/6 );//sistema solar
      imagen.dibujarImg (imagen.fotos[9], (width*10)/16, (height*5)/6, width/8, height/6 );//astronauta

      textos.globodialogo((width*0.8), (height*0.64), (width*0.325), #E6E62D);
      textos.dibujarTextos(textos.texto[4], width*0.655, height*0.603, textos.Dialogo, (width*0.0175), 0 );

      textos.dibujarTextos(textos.texto[5], width*0.37, height*0.453, textos.Titulo, (width*0.025), 255);
      textos.dibujarTextos(textos.texto [6], width*0.5375, height*0.37, textos.Titulo, (width*0.025), 255);
    }

    ///////////////////////////////// HISTORIA PLANETA JUPITER

    else if ( estado.equals("Jupiter" ) ) {
      imagen.dibujarImg (imagen.fotos[19], width/2, height/2, width, height );//júpiter
      imagen.dibujarImg (imagen.fotos[9], (width*3)/16, (height*5)/6, width/8, height/6 );//astronauta

      textos.globodialogo (width*0.35, height*0.5834, (width*0.325), #E6E62D);
      textos.dibujarTextos(textos.texto [10], (width*0.2375), (height*0.55), textos.Dialogo, (width*0.01875), 0 );

      nave.dibujarNave2();
      nave.despegar2();
    }

    ////////////////////////////////// HISTORIA PLANETA JUPITER - ATERRIZAR

    else if ( estado.equals( "aterrizar" ) ) {
      imagen.dibujarImg (imagen.fotos[20], width/2, height/2, width, height );//fondo extraterrestres
      imagen.dibujarImg (imagen.fotos[14], (width*0.125), height*0.367, width/8, height/6 );//astronauta sorprendido

      textos.globodialogo ((width*0.225), (height*0.1334), (width*0.325), #E6E62D);
      textos.dibujarTextos(textos.texto [11], (width*0.1125), (height*0.09166), textos.Dialogo, (width*0.01875), 0 );
    }

    //////////////////////////////////// HISTORIA PLANETA JUPITER - CONOCER EXTRATERRESTRES

    else if ( estado.equals( "conocerextraterrestres" ) ) {
      imagen.dibujarImg (imagen.fotos[21], width/2, height/2, width, height );//fondo extraterrestres F
      imagen.dibujarImg (imagen.fotos[16], (width*9)/16, height*0.283, width/8, height/6 );//astronauta F

      textos.globodialogo (width*0.7125, height*0.1, (width*0.325), #E6E62D );
      textos.dibujarTextos(textos.texto [12], (width*0.5815), (height*0.091), textos.Dialogo, (width*0.0225), 0 );

      imagen.dibujarImg (imagen.fotos[17], (width*3)/16, height/7.5, (width*5)/16, height/8 );//presiona backspace
    }

    ///////////////////////////////// HISTORIA NUEVO PLANETA ENCONTRADO -----------PANTALLA GANAR JUEGO

    else if ( estado.equals("nuevoplaneta" ) ) {
      imagen.dibujarImg (imagen.fotos[18], width/2, height/2, width, height);//nuevo planeta
      imagen.dibujarImg (imagen.fotos[9], (width*9)/16, (height*5)/6, width/8, height/6 );//astronauta

      textos.globodialogo ((width*0.73125), (height*0.6), (width*0.325), #E6E62D );
      textos.dibujarTextos(textos.texto [9], (width*0.615), (height*0.55), textos.Dialogo, (width*0.01875), 0 );

      imagen.dibujarImg (imagen.fotos[17], width/2, (height*2)/15, (width*5)/16, height*0.125 );//presiona backspace
    }

    ///////////////////////////////// HISTORIA NAVE ROTA EN MARTE ------PANTALLA PERDER JUEGO

    else if ( estado.equals( "naverota" ) ) {

      imagen.dibujarImg (imagen.fotos[15], width*0.5, height*0.5, width, height);//nave estrellada
      imagen.dibujarImg (imagen.fotos[16], ((width*9)/14.5), (height*5.3)/6, (width/8), (height/6) );//astronauta F

      textos.globodialogo ((width*0.7687), (height*0.667), (width*0.325), #E6E62D );
      textos.dibujarTextos(textos.texto [8], (width*0.669), (height*0.67), textos.Dialogo, (width*0.0225), 0 );

      imagen.dibujarImg (imagen.fotos[17], (width/2), (height/6), (width*5)/16, height*0.125 );//presiona backspace
    }
    /////////////////////////////////// CREDITOS

    else if ( estado.equals("creditos") ) {

      imagen.dibujarImg (imagen.fotos[6], width/2, height/2, width, height );//fondo espacio
      pushStyle();
      textAlign(CENTER, CENTER);
      textos.dibujarTextos(textos.texto [13], (width/2), posYcred, textos.Dialogo, (width*0.0375), 255 );//créditos
      popStyle();
      posYcred -= 2;
      imagen.dibujarImg (imagen.fotos[22], width/2, (height*5)/6, (width*5)/16, height/8 );//presiona enter
    } 
    
    /////////////////////////////////// Jugar
    else if ( estado.equals("juego")) {
    }
  }
//---------------------------------------------------------------------------------------------------
  void teclas() {
    //CAMBIO de ESTADO: "INICIO" -> "DESPEGUE"    
    if ( key == ENTER && estado.equals("creditos")) {
      estado = "inicio";
      nave.reiniciarNave();
      posYcred = height+100;
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
