Game game;

void setup(){
  size(800,600);
  game = new Game();
}

void draw(){
 background(100);
game.fondo();
game.crearPlayer();


}

void mousePressed(){
}

void keyPressed(){
  game.mover();
}
