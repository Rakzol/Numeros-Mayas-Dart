import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'aplicacion/BlocTablilla.dart';
import 'aplicacion/estadotablilla.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => BlocTablilla(),
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: BlocBuilder<BlocTablilla, EstadoTablilla>(
                builder: (context, estado) => (Scaffold(
                      body: Center(
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  color: estado.error
                                      ? Colors.red
                                      : estado.respuesta
                                          ? Colors.green
                                          : Colors.white,
                                  border: Border.all(color: Colors.grey)),
                              width: 150,
                              height: 150,
                              child: GestureDetector(
                                onPanStart: (dragStartDetails) {
                                  if (!estado.dibujar || estado.respuesta ) {
                                    return;
                                  }
                                  context
                                      .read<BlocTablilla>()
                                      .iniciarContenedor(2);
                                },
                                onPanUpdate: (dragUpdateDetails) {
                                  if (!estado.dibujar || estado.respuesta ) {
                                    return;
                                  }
                                  context
                                      .read<BlocTablilla>()
                                      .actualizarContenedor(
                                          2,
                                          dragUpdateDetails.delta.dx,
                                          dragUpdateDetails.delta.dy);
                                },
                                onPanEnd: (dragEndDetails) {
                                  if (!estado.dibujar || estado.respuesta ) {
                                    return;
                                  }
                                  context
                                      .read<BlocTablilla>()
                                      .finalizarContenedor(2);
                                },
                                child: CustomPaint(
                                  painter: Lienzo(
                                      puntos: estado.contenedores[2].puntos,
                                      lineas: estado.contenedores[2].lineas),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  color: estado.error
                                      ? Colors.red
                                      : estado.respuesta
                                          ? Colors.green
                                          : Colors.white,
                                  border: Border.all(color: Colors.grey)),
                              width: 150,
                              height: 150,
                              child: GestureDetector(
                                onPanStart: (dragStartDetails) {
                                  if (!estado.dibujar || estado.respuesta ) {
                                    return;
                                  }
                                  context
                                      .read<BlocTablilla>()
                                      .iniciarContenedor(1);
                                },
                                onPanUpdate: (dragUpdateDetails) {
                                  if (!estado.dibujar || estado.respuesta ) {
                                    return;
                                  }
                                  context
                                      .read<BlocTablilla>()
                                      .actualizarContenedor(
                                          1,
                                          dragUpdateDetails.delta.dx,
                                          dragUpdateDetails.delta.dy);
                                },
                                onPanEnd: (dragEndDetails) {
                                  if (!estado.dibujar || estado.respuesta ) {
                                    return;
                                  }
                                  context
                                      .read<BlocTablilla>()
                                      .finalizarContenedor(1);
                                },
                                child: CustomPaint(
                                  painter: Lienzo(
                                      puntos: estado.contenedores[1].puntos,
                                      lineas: estado.contenedores[1].lineas),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  color: estado.error
                                      ? Colors.red
                                      : estado.respuesta
                                          ? Colors.green
                                          : Colors.white,
                                  border: Border.all(color: Colors.grey)),
                              width: 150,
                              height: 150,
                              child: GestureDetector(
                                onPanStart: (dragStartDetails) {
                                  if (!estado.dibujar || estado.respuesta ) {
                                    return;
                                  }
                                  context
                                      .read<BlocTablilla>()
                                      .iniciarContenedor(0);
                                },
                                onPanUpdate: (dragUpdateDetails) {
                                  if (!estado.dibujar || estado.respuesta ) {
                                    return;
                                  }
                                  context
                                      .read<BlocTablilla>()
                                      .actualizarContenedor(
                                          0,
                                          dragUpdateDetails.delta.dx,
                                          dragUpdateDetails.delta.dy);
                                },
                                onPanEnd: (dragEndDetails) {
                                  if (!estado.dibujar || estado.respuesta ) {
                                    return;
                                  }
                                  context
                                      .read<BlocTablilla>()
                                      .finalizarContenedor(0);
                                },
                                child: CustomPaint(
                                  painter: Lienzo(
                                      puntos: estado.contenedores[0].puntos,
                                      lineas: estado.contenedores[0].lineas),
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 150,
                              child: TextField(
                                onChanged: (numero) {
                                  context
                                      .read<BlocTablilla>()
                                      .actualizarNumero(numero);
                                },
                                enabled: !estado.dibujar && !estado.respuesta,
                                controller: TextEditingController.fromValue(
                                    TextEditingValue(
                                        text: estado.numero.toString(),
                                        selection: TextSelection.collapsed(
                                            offset: estado.numero
                                                .toString()
                                                .length))),
                                decoration: InputDecoration(
                                  errorText:
                                      estado.error ? 'Número incorrecto' : null,
                                  hintText: 'Escriba el número',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      floatingActionButton: Stack(
                        children: (estado.respuesta
                            ? <Widget>[
                                Positioned(
                                  bottom: 10.0,
                                  right: 10.0,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      context.read<BlocTablilla>().randomizar();
                                    },
                                    child: Icon(Icons.note_add),
                                  ),
                                )
                              ]
                            : <Widget>[
                                Positioned(
                                  bottom: 80.0,
                                  right: 10.0,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      context.read<BlocTablilla>().checkear();
                                    },
                                    child: Icon(Icons.done),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10.0,
                                  right: 10.0,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      context
                                          .read<BlocTablilla>()
                                          .mostrarRespuesta();
                                    },
                                    child: Icon(Icons.visibility),
                                  ),
                                )
                              ]),
                      ),
                    )))));
  }
}

class Lienzo extends CustomPainter {
  int puntos, lineas;
  Lienzo({this.puntos, this.lineas});

  @override
  void paint(Canvas canvas, Size size) {
    //print('$puntos, $lineas');
    //print('$size = ${size.width}, ${size.height}');

    Paint plantilla = Paint()
      ..color = Color(Colors.black.value)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6;

    Paint plantilla_2 = Paint()
      ..color = Color(Colors.black.value)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16;

    Paint plantilla_3 = Paint()..color = Color(Colors.black.value);

    final curva = Path()
      ..moveTo(10, 75)
      ..quadraticBezierTo(75, 95, 140, 75);

    final linea_1 = Path()
      ..moveTo(40, 46)
      ..quadraticBezierTo(25, 60, 40, 82);

    final linea_2 = Path()
      ..moveTo(75, 40)
      ..quadraticBezierTo(50, 65, 75, 85);

    final linea_3 = Path()
      ..moveTo(112.5, 47)
      ..quadraticBezierTo(100, 60, 112.5, 82);

    if (puntos == 0 && lineas == 0) {
      //La curva del zero
      canvas.drawPath(curva, plantilla);
      canvas.drawPath(linea_1, plantilla);
      canvas.drawPath(linea_2, plantilla);
      canvas.drawPath(linea_3, plantilla);
      //El contorno del zero
      canvas.drawOval(Rect.fromLTRB(10, 40, 140, 110), plantilla);
    } else {
      for (int c = 0; c < puntos; c++) {
        canvas.drawCircle(
            Offset(23 + (c * 34).toDouble() + 52 - (17.5 * (puntos - 1)), 26),
            12,
            plantilla_3);
      }
      for (int c = 0; c < lineas; c++) {
        canvas.drawLine(Offset(10, (60 + (c * 30)).toDouble()),
            Offset(140, (60 + (c * 30)).toDouble()), plantilla_2);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
