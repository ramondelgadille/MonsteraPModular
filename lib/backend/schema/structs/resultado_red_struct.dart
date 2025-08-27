// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

/// Valores de salida al realizar Red de Raíces.
class ResultadoRedStruct extends FFFirebaseStruct {
  ResultadoRedStruct({
    /// Nombre de la red de apoyo.
    String? nombre,

    /// Respuesta de la pregunta relacionada.
    bool? escucha,

    /// Respuesta de la pregunta relacionada.
    bool? ayuda,

    /// Respuesta de la pregunta relacionada.
    bool? consejo,

    /// Respuesta de la pregunta relacionada.
    bool? reconoce,

    /// Respuesta de la pregunta relacionada.
    bool? comprende,

    /// Respuesta de la pregunta relacionada.
    bool? invita,

    /// Respuesta de la pregunta relacionada.
    bool? acepta,

    /// Respuesta de la pregunta relacionada.
    bool? enRed,

    /// Cantidad de True en el objeto.
    int? contadorTrue,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nombre = nombre,
        _escucha = escucha,
        _ayuda = ayuda,
        _consejo = consejo,
        _reconoce = reconoce,
        _comprende = comprende,
        _invita = invita,
        _acepta = acepta,
        _enRed = enRed,
        _contadorTrue = contadorTrue,
        super(firestoreUtilData);

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "escucha" field.
  bool? _escucha;
  bool get escucha => _escucha ?? false;
  set escucha(bool? val) => _escucha = val;

  bool hasEscucha() => _escucha != null;

  // "ayuda" field.
  bool? _ayuda;
  bool get ayuda => _ayuda ?? false;
  set ayuda(bool? val) => _ayuda = val;

  bool hasAyuda() => _ayuda != null;

  // "consejo" field.
  bool? _consejo;
  bool get consejo => _consejo ?? false;
  set consejo(bool? val) => _consejo = val;

  bool hasConsejo() => _consejo != null;

  // "reconoce" field.
  bool? _reconoce;
  bool get reconoce => _reconoce ?? false;
  set reconoce(bool? val) => _reconoce = val;

  bool hasReconoce() => _reconoce != null;

  // "comprende" field.
  bool? _comprende;
  bool get comprende => _comprende ?? false;
  set comprende(bool? val) => _comprende = val;

  bool hasComprende() => _comprende != null;

  // "invita" field.
  bool? _invita;
  bool get invita => _invita ?? false;
  set invita(bool? val) => _invita = val;

  bool hasInvita() => _invita != null;

  // "acepta" field.
  bool? _acepta;
  bool get acepta => _acepta ?? false;
  set acepta(bool? val) => _acepta = val;

  bool hasAcepta() => _acepta != null;

  // "enRed" field.
  bool? _enRed;
  bool get enRed => _enRed ?? false;
  set enRed(bool? val) => _enRed = val;

  bool hasEnRed() => _enRed != null;

  // "contadorTrue" field.
  int? _contadorTrue;
  int get contadorTrue => _contadorTrue ?? 0;
  set contadorTrue(int? val) => _contadorTrue = val;

  void incrementContadorTrue(int amount) =>
      contadorTrue = contadorTrue + amount;

  bool hasContadorTrue() => _contadorTrue != null;

  static ResultadoRedStruct fromMap(Map<String, dynamic> data) =>
      ResultadoRedStruct(
        nombre: data['nombre'] as String?,
        escucha: data['escucha'] as bool?,
        ayuda: data['ayuda'] as bool?,
        consejo: data['consejo'] as bool?,
        reconoce: data['reconoce'] as bool?,
        comprende: data['comprende'] as bool?,
        invita: data['invita'] as bool?,
        acepta: data['acepta'] as bool?,
        enRed: data['enRed'] as bool?,
        contadorTrue: castToType<int>(data['contadorTrue']),
      );

  static ResultadoRedStruct? maybeFromMap(dynamic data) => data is Map
      ? ResultadoRedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nombre': _nombre,
        'escucha': _escucha,
        'ayuda': _ayuda,
        'consejo': _consejo,
        'reconoce': _reconoce,
        'comprende': _comprende,
        'invita': _invita,
        'acepta': _acepta,
        'enRed': _enRed,
        'contadorTrue': _contadorTrue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'escucha': serializeParam(
          _escucha,
          ParamType.bool,
        ),
        'ayuda': serializeParam(
          _ayuda,
          ParamType.bool,
        ),
        'consejo': serializeParam(
          _consejo,
          ParamType.bool,
        ),
        'reconoce': serializeParam(
          _reconoce,
          ParamType.bool,
        ),
        'comprende': serializeParam(
          _comprende,
          ParamType.bool,
        ),
        'invita': serializeParam(
          _invita,
          ParamType.bool,
        ),
        'acepta': serializeParam(
          _acepta,
          ParamType.bool,
        ),
        'enRed': serializeParam(
          _enRed,
          ParamType.bool,
        ),
        'contadorTrue': serializeParam(
          _contadorTrue,
          ParamType.int,
        ),
      }.withoutNulls;

  static ResultadoRedStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultadoRedStruct(
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        escucha: deserializeParam(
          data['escucha'],
          ParamType.bool,
          false,
        ),
        ayuda: deserializeParam(
          data['ayuda'],
          ParamType.bool,
          false,
        ),
        consejo: deserializeParam(
          data['consejo'],
          ParamType.bool,
          false,
        ),
        reconoce: deserializeParam(
          data['reconoce'],
          ParamType.bool,
          false,
        ),
        comprende: deserializeParam(
          data['comprende'],
          ParamType.bool,
          false,
        ),
        invita: deserializeParam(
          data['invita'],
          ParamType.bool,
          false,
        ),
        acepta: deserializeParam(
          data['acepta'],
          ParamType.bool,
          false,
        ),
        enRed: deserializeParam(
          data['enRed'],
          ParamType.bool,
          false,
        ),
        contadorTrue: deserializeParam(
          data['contadorTrue'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ResultadoRedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResultadoRedStruct &&
        nombre == other.nombre &&
        escucha == other.escucha &&
        ayuda == other.ayuda &&
        consejo == other.consejo &&
        reconoce == other.reconoce &&
        comprende == other.comprende &&
        invita == other.invita &&
        acepta == other.acepta &&
        enRed == other.enRed &&
        contadorTrue == other.contadorTrue;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nombre,
        escucha,
        ayuda,
        consejo,
        reconoce,
        comprende,
        invita,
        acepta,
        enRed,
        contadorTrue
      ]);
}

ResultadoRedStruct createResultadoRedStruct({
  String? nombre,
  bool? escucha,
  bool? ayuda,
  bool? consejo,
  bool? reconoce,
  bool? comprende,
  bool? invita,
  bool? acepta,
  bool? enRed,
  int? contadorTrue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ResultadoRedStruct(
      nombre: nombre,
      escucha: escucha,
      ayuda: ayuda,
      consejo: consejo,
      reconoce: reconoce,
      comprende: comprende,
      invita: invita,
      acepta: acepta,
      enRed: enRed,
      contadorTrue: contadorTrue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ResultadoRedStruct? updateResultadoRedStruct(
  ResultadoRedStruct? resultadoRed, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    resultadoRed
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addResultadoRedStructData(
  Map<String, dynamic> firestoreData,
  ResultadoRedStruct? resultadoRed,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (resultadoRed == null) {
    return;
  }
  if (resultadoRed.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && resultadoRed.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final resultadoRedData =
      getResultadoRedFirestoreData(resultadoRed, forFieldValue);
  final nestedData =
      resultadoRedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = resultadoRed.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getResultadoRedFirestoreData(
  ResultadoRedStruct? resultadoRed, [
  bool forFieldValue = false,
]) {
  if (resultadoRed == null) {
    return {};
  }
  final firestoreData = mapToFirestore(resultadoRed.toMap());

  // Add any Firestore field values
  resultadoRed.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getResultadoRedListFirestoreData(
  List<ResultadoRedStruct>? resultadoReds,
) =>
    resultadoReds?.map((e) => getResultadoRedFirestoreData(e, true)).toList() ??
    [];
