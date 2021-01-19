// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'estadotablilla.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EstadoTablillaTearOff {
  const _$EstadoTablillaTearOff();

// ignore: unused_element
  _EstadoTablilla call(
      {@required List<Contenedor> contenedores,
      @required bool dibujar,
      @required bool error,
      @required bool respuesta,
      @required int numero,
      @required int trazos}) {
    return _EstadoTablilla(
      contenedores: contenedores,
      dibujar: dibujar,
      error: error,
      respuesta: respuesta,
      numero: numero,
      trazos: trazos,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EstadoTablilla = _$EstadoTablillaTearOff();

/// @nodoc
mixin _$EstadoTablilla {
  List<Contenedor> get contenedores;
  bool get dibujar;
  bool get error;
  bool get respuesta;
  int get numero;
  int get trazos;

  @JsonKey(ignore: true)
  $EstadoTablillaCopyWith<EstadoTablilla> get copyWith;
}

/// @nodoc
abstract class $EstadoTablillaCopyWith<$Res> {
  factory $EstadoTablillaCopyWith(
          EstadoTablilla value, $Res Function(EstadoTablilla) then) =
      _$EstadoTablillaCopyWithImpl<$Res>;
  $Res call(
      {List<Contenedor> contenedores,
      bool dibujar,
      bool error,
      bool respuesta,
      int numero,
      int trazos});
}

/// @nodoc
class _$EstadoTablillaCopyWithImpl<$Res>
    implements $EstadoTablillaCopyWith<$Res> {
  _$EstadoTablillaCopyWithImpl(this._value, this._then);

  final EstadoTablilla _value;
  // ignore: unused_field
  final $Res Function(EstadoTablilla) _then;

  @override
  $Res call({
    Object contenedores = freezed,
    Object dibujar = freezed,
    Object error = freezed,
    Object respuesta = freezed,
    Object numero = freezed,
    Object trazos = freezed,
  }) {
    return _then(_value.copyWith(
      contenedores: contenedores == freezed
          ? _value.contenedores
          : contenedores as List<Contenedor>,
      dibujar: dibujar == freezed ? _value.dibujar : dibujar as bool,
      error: error == freezed ? _value.error : error as bool,
      respuesta: respuesta == freezed ? _value.respuesta : respuesta as bool,
      numero: numero == freezed ? _value.numero : numero as int,
      trazos: trazos == freezed ? _value.trazos : trazos as int,
    ));
  }
}

/// @nodoc
abstract class _$EstadoTablillaCopyWith<$Res>
    implements $EstadoTablillaCopyWith<$Res> {
  factory _$EstadoTablillaCopyWith(
          _EstadoTablilla value, $Res Function(_EstadoTablilla) then) =
      __$EstadoTablillaCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Contenedor> contenedores,
      bool dibujar,
      bool error,
      bool respuesta,
      int numero,
      int trazos});
}

/// @nodoc
class __$EstadoTablillaCopyWithImpl<$Res>
    extends _$EstadoTablillaCopyWithImpl<$Res>
    implements _$EstadoTablillaCopyWith<$Res> {
  __$EstadoTablillaCopyWithImpl(
      _EstadoTablilla _value, $Res Function(_EstadoTablilla) _then)
      : super(_value, (v) => _then(v as _EstadoTablilla));

  @override
  _EstadoTablilla get _value => super._value as _EstadoTablilla;

  @override
  $Res call({
    Object contenedores = freezed,
    Object dibujar = freezed,
    Object error = freezed,
    Object respuesta = freezed,
    Object numero = freezed,
    Object trazos = freezed,
  }) {
    return _then(_EstadoTablilla(
      contenedores: contenedores == freezed
          ? _value.contenedores
          : contenedores as List<Contenedor>,
      dibujar: dibujar == freezed ? _value.dibujar : dibujar as bool,
      error: error == freezed ? _value.error : error as bool,
      respuesta: respuesta == freezed ? _value.respuesta : respuesta as bool,
      numero: numero == freezed ? _value.numero : numero as int,
      trazos: trazos == freezed ? _value.trazos : trazos as int,
    ));
  }
}

/// @nodoc
class _$_EstadoTablilla implements _EstadoTablilla {
  _$_EstadoTablilla(
      {@required this.contenedores,
      @required this.dibujar,
      @required this.error,
      @required this.respuesta,
      @required this.numero,
      @required this.trazos})
      : assert(contenedores != null),
        assert(dibujar != null),
        assert(error != null),
        assert(respuesta != null),
        assert(numero != null),
        assert(trazos != null);

  @override
  final List<Contenedor> contenedores;
  @override
  final bool dibujar;
  @override
  final bool error;
  @override
  final bool respuesta;
  @override
  final int numero;
  @override
  final int trazos;

  @override
  String toString() {
    return 'EstadoTablilla(contenedores: $contenedores, dibujar: $dibujar, error: $error, respuesta: $respuesta, numero: $numero, trazos: $trazos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EstadoTablilla &&
            (identical(other.contenedores, contenedores) ||
                const DeepCollectionEquality()
                    .equals(other.contenedores, contenedores)) &&
            (identical(other.dibujar, dibujar) ||
                const DeepCollectionEquality()
                    .equals(other.dibujar, dibujar)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.respuesta, respuesta) ||
                const DeepCollectionEquality()
                    .equals(other.respuesta, respuesta)) &&
            (identical(other.numero, numero) ||
                const DeepCollectionEquality().equals(other.numero, numero)) &&
            (identical(other.trazos, trazos) ||
                const DeepCollectionEquality().equals(other.trazos, trazos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contenedores) ^
      const DeepCollectionEquality().hash(dibujar) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(respuesta) ^
      const DeepCollectionEquality().hash(numero) ^
      const DeepCollectionEquality().hash(trazos);

  @JsonKey(ignore: true)
  @override
  _$EstadoTablillaCopyWith<_EstadoTablilla> get copyWith =>
      __$EstadoTablillaCopyWithImpl<_EstadoTablilla>(this, _$identity);
}

abstract class _EstadoTablilla implements EstadoTablilla {
  factory _EstadoTablilla(
      {@required List<Contenedor> contenedores,
      @required bool dibujar,
      @required bool error,
      @required bool respuesta,
      @required int numero,
      @required int trazos}) = _$_EstadoTablilla;

  @override
  List<Contenedor> get contenedores;
  @override
  bool get dibujar;
  @override
  bool get error;
  @override
  bool get respuesta;
  @override
  int get numero;
  @override
  int get trazos;
  @override
  @JsonKey(ignore: true)
  _$EstadoTablillaCopyWith<_EstadoTablilla> get copyWith;
}
