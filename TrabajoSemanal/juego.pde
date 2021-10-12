class Game {
  Player player1;

  Game() {
    this.player1 = new Player();
  }

  void crearPlayer() {
    this.player1.dibujarPersonaje();
  }

  void mover() {
    this.player1.moverUP();
    this.player1.moverDOWN();
    this.player1.moverLEFT();
    this.player1.moverRIGHT();
    this.player1.moverUP_LEFT();
    this.player1.moverUP_RIGHT();
    this.player1.moverDOWN_RIGHT();
    this.player1.moverDOWN_RIGHT();
    this.player1.bordesPantalla();
  }

  void fondo() {
    this.player1.fondointeractivo();
  }
}
