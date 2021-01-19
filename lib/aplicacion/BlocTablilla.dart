import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'estadotablilla.dart';

class BlocTablilla extends Cubit<EstadoTablilla> {
  BlocTablilla() : super(EstadoTablilla.inicial());

  void iniciarContenedor(int contenedor) {
    state.contenedores[contenedor].dx = 0;
    state.contenedores[contenedor].dy = 0;
  }

  void actualizarContenedor(int contenedor, double dx, double dy) {
    state.contenedores[contenedor].dx += dx;
    state.contenedores[contenedor].dy += dy;
  }

  void finalizarContenedor(int contenedor) {
    if (state.contenedores[contenedor].dy.abs() >
        state.contenedores[contenedor].dx.abs()) {
      if (state.contenedores[contenedor].dy > 0 &&
          state.contenedores[contenedor].puntos < 4) {
        state.contenedores[contenedor].puntos++;
      } else if (state.contenedores[contenedor].dy < 0 &&
          state.contenedores[contenedor].puntos > 0) {
        state.contenedores[contenedor].puntos--;
      }
    } else if (state.contenedores[contenedor].dx.abs() >
        state.contenedores[contenedor].dy.abs()) {
      if (state.contenedores[contenedor].dx > 0 &&
          state.contenedores[contenedor].lineas < 3) {
        state.contenedores[contenedor].lineas++;
      } else if (state.contenedores[contenedor].dx < 0 &&
          state.contenedores[contenedor].lineas > 0) {
        state.contenedores[contenedor].lineas--;
      }
    }
    emit(state.copyWith(error: false));
    emit(state.copyWith(trazos: state.trazos+1 ));
  }

  void actualizarNumero(String numero) {
    emit(state.copyWith(error: false));
    emit(state.copyWith(numero: int.parse(numero)));
  }

  int mayaArabigo(){
    int t = 0;
    state.contenedores.forEach((c) {
      t += ( c.puntos * c.multiplicador ) + ( (c.lineas * 5) * c.multiplicador );
    });
    return t;
  }

  void arabigoMaya(int valor){
      state.contenedores.reversed.forEach((c) {
        int divisible = valor ~/ c.multiplicador;
        valor -= divisible * c.multiplicador;

        c.lineas = divisible ~/ 5;
        divisible -= c.lineas * 5;
        c.puntos = divisible;
      });
  }

  void mostrarRespuesta() {
    if(state.dibujar){
      arabigoMaya(state.numero);
    }else{
      emit(state.copyWith( numero: mayaArabigo()));
    }

    emit(state.copyWith(error: false));
    emit(state.copyWith(respuesta: true));
  }

  void checkear(){
    emit(state.copyWith(error: !(state.numero == mayaArabigo())));
    emit(state.copyWith(respuesta: state.numero == mayaArabigo()));
  }

  void randomizar(){
    emit( state.copyWith(dibujar: Random().nextBool()) );
    if (state.dibujar) {
      state.contenedores.forEach((c) {
        c.limpiar();
      });
      emit( state.copyWith(numero: Random().nextInt(401)) );
    } else {
      arabigoMaya(r.nextInt(401));
      emit( state.copyWith(numero: 0) );
    }

    emit(state.copyWith( error: false ));
    emit(state.copyWith( trazos: 0 ));
    emit(state.copyWith( respuesta: !state.respuesta ));
  }
}
