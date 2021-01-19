import 'dart:math';

class Contenedor{

  int puntos = 0, lineas = 0, multiplicador;
  double dx, dy;
  Random random = Random();

  Contenedor({this.puntos, this.lineas, this.multiplicador});

  void randomizar(){
    puntos = random.nextInt(4) + 1;
    lineas = random.nextInt(3) + 1;
  }

  void limpiar(){
    puntos = 0;
    lineas = 0;
  }

}