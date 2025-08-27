// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

/// Actividad genérica
class PreguntaStruct extends FFFirebaseStruct {
  PreguntaStruct({
    /// atributo relacionado a la decision que se toma con las opciones.
    String? pregunta,

    /// relacionada a la actividad y donde se encontrará o de que formará parte
    /// este item.
    String? descripcion,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pregunta = pregunta,
        _descripcion = descripcion,
        super(firestoreUtilData);

  // "pregunta" field.
  String? _pregunta;
  String get pregunta => _pregunta ?? '';
  set pregunta(String? val) => _pregunta = val;

  bool hasPregunta() => _pregunta != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  set descripcion(String? val) => _descripcion = val;

  bool hasDescripcion() => _descripcion != null;

  static PreguntaStruct fromMap(Map<String, dynamic> data) => PreguntaStruct(
        pregunta: data['pregunta'] as String?,
        descripcion: data['descripcion'] as String?,
      );

  static PreguntaStruct? maybeFromMap(dynamic data) =>
      data is Map ? PreguntaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'pregunta': _pregunta,
        'descripcion': _descripcion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pregunta': serializeParam(
          _pregunta,
          ParamType.String,
        ),
        'descripcion': serializeParam(
          _descripcion,
          ParamType.String,
        ),
      }.withoutNulls;

  static PreguntaStruct fromSerializableMap(Map<String, dynamic> data) =>
      PreguntaStruct(
        pregunta: deserializeParam(
          data['pregunta'],
          ParamType.String,
          false,
        ),
        descripcion: deserializeParam(
          data['descripcion'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PreguntaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PreguntaStruct &&
        pregunta == other.pregunta &&
        descripcion == other.descripcion;
  }

  @override
  int get hashCode => const ListEquality().hash([pregunta, descripcion]);
}

PreguntaStruct createPreguntaStruct({
  String? pregunta,
  String? descripcion,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PreguntaStruct(
      pregunta: pregunta,
      descripcion: descripcion,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PreguntaStruct? updatePreguntaStruct(
  PreguntaStruct? preguntaStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    preguntaStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPreguntaStructData(
  Map<String, dynamic> firestoreData,
  PreguntaStruct? preguntaStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (preguntaStruct == null) {
    return;
  }
  if (preguntaStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && preguntaStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final preguntaStructData =
      getPreguntaFirestoreData(preguntaStruct, forFieldValue);
  final nestedData =
      preguntaStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = preguntaStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPreguntaFirestoreData(
  PreguntaStruct? preguntaStruct, [
  bool forFieldValue = false,
]) {
  if (preguntaStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(preguntaStruct.toMap());

  // Add any Firestore field values
  preguntaStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPreguntaListFirestoreData(
  List<PreguntaStruct>? preguntaStructs,
) =>
    preguntaStructs?.map((e) => getPreguntaFirestoreData(e, true)).toList() ??
    [];
