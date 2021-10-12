class Player {
  //Atributos
  int posXplayer;
  int posYplayer;
  int tamPlayer=10;
  int fondofor = 200;
  int ancho = width/fondofor;
  int alto = height/fondofor;

  //Constructores
  Player() {
    this.posXplayer = 400;
    this.posYplayer= 575;
  }
  Player(int _posXplayer, int _posYplayer) {
    this.posXplayer = _posXplayer;
    this.posYplayer= _posYplayer;
  }

  //Método ú acciones
  void dibujarPersonaje() {
    fill(random(200));
    ellipse(posXplayer, posYplayer, tamPlayer, tamPlayer);
  }
  void moverUP_LEFT() {
    if (keyCode == UP&&keyCode == LEFT) {
      this.posYplayer = this.posYplayer - 10 ;
      this.posXplayer = this.posXplayer - 10;
    }
  }
  void moverUP_RIGHT() {
    if (keyCode == UP&&keyCode == LEFT) {
      this.posYplayer = this.posYplayer + 10 ;
      this.posXplayer = this.posXplayer + 10;
    }
  }
  void moverDOWN_LEFT() {
    if (keyCode == UP&&keyCode == LEFT) {
      this.posYplayer = this.posYplayer - 10 ;
      this.posXplayer = this.posXplayer - 10;
    }
  }
  void moverDOWN_RIGHT() {
    if (keyCode == UP&&keyCode == LEFT) {
      this.posYplayer = this.posYplayer + 10 ;
      this.posXplayer = this.posXplayer + 10;
    }
  }
  void moverUP() {
    if (keyCode == UP) {
      this.posYplayer = this.posYplayer - 10 ;
    }
  }
  void moverDOWN() {
    if (keyCode == DOWN) {
      this.posYplayer = this.posYplayer + 10;
    }
  }
  void moverLEFT() {
    if (keyCode == LEFT) {
      this.posXplayer = this.posXplayer - 10;
    }
  }
  void moverRIGHT() {
    if (keyCode == RIGHT) {
      this.posXplayer = this.posXplayer + 10;
    }
  }



  void bordesPantalla() {
    if (posXplayer<=0+tamPlayer/2) { 
      posXplayer=0+tamPlayer/2;
    } else if (posXplayer>=width-tamPlayer/2) {
      posXplayer=width-tamPlayer/2;
    }
    if (posYplayer<=0+tamPlayer/2) { 
      posYplayer=0+tamPlayer/2;
    } else if (posYplayer>=height-tamPlayer/2) {
      posYplayer=height-tamPlayer/2;
    }
  }

  void fondointeractivo() {
   // translate(width/2,height/2);
    for (int j=0; j<this.fondofor; j++) {
      for (int i=0; i<this.fondofor; i++) {

        int colorDelRect = round(map(posYplayer, 0, width, 0, random(100, 255)));
        int colorDelRect2 = round(map(posXplayer, 0, width, 0, random(100, 255)));
        
        fill(random(255), colorDelRect, colorDelRect2);
        rect(i * ancho, j * alto, ancho, alto);
      }
    }
  }
}
