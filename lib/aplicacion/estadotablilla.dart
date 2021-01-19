import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'Contenedor.dart';

part 'estadotablilla.freezed.dart';

Random r = Random();

@freezed
abstract class EstadoTablilla with _$EstadoTablilla {
  factory EstadoTablilla({
    @required List<Contenedor> contenedores,
    @required bool dibujar,
    @required bool error,
    @required bool respuesta,
    @required int numero,
    @required int trazos,
  }) = _EstadoTablilla;

  factory EstadoTablilla.inicial() {
    bool dibujar = r.nextBool();
    List<Contenedor> contenedores = [
      Contenedor(multiplicador: 1),
      Contenedor(multiplicador: 20),
      Contenedor(multiplicador: 400)
    ];
    int numero;

    if (dibujar) {
      contenedores.forEach((c) {
        c.limpiar();
      });
      numero = r.nextInt(401);
    } else {
      int valor = r.nextInt(401);
      contenedores.reversed.forEach((c) {
        int divisible = valor ~/ c.multiplicador;
        valor -= divisible * c.multiplicador;

        c.lineas = divisible ~/ 5;
        divisible -= c.lineas * 5;
        c.puntos = divisible;
      });
      numero = 0;
    }

    return EstadoTablilla(
        contenedores: contenedores,
        dibujar: dibujar,
        error: false,
        respuesta: false,
        numero: numero,
        trazos: 0);
  }
}
