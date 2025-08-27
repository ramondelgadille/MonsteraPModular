// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

/// Dato que contiene información de un evento.
class ActividadStruct extends FFFirebaseStruct {
  ActividadStruct({
    /// Nombre key del evento
    String? tipo,

    /// Se ha hecho este evento.
    bool? done,

    /// DateTime que se volvió Done.
    DateTime? fecha,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tipo = tipo,
        _done = done,
        _fecha = fecha,
        super(firestoreUtilData);

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "done" field.
  bool? _done;
  bool get done => _done ?? false;
  set done(bool? val) => _done = val;

  bool hasDone() => _done != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  set fecha(DateTime? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  static ActividadStruct fromMap(Map<String, dynamic> data) => ActividadStruct(
        tipo: data['tipo'] as String?,
        done: data['done'] as bool?,
        fecha: data['fecha'] as DateTime?,
      );

  static ActividadStruct? maybeFromMap(dynamic data) => data is Map
      ? ActividadStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tipo': _tipo,
        'done': _done,
        'fecha': _fecha,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'done': serializeParam(
          _done,
          ParamType.bool,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static ActividadStruct fromSerializableMap(Map<String, dynamic> data) =>
      ActividadStruct(
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        done: deserializeParam(
          data['done'],
          ParamType.bool,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'ActividadStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ActividadStruct &&
        tipo == other.tipo &&
        done == other.done &&
        fecha == other.fecha;
  }

  @override
  int get hashCode => const ListEquality().hash([tipo, done, fecha]);
}

ActividadStruct createActividadStruct({
  String? tipo,
  bool? done,
  DateTime? fecha,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ActividadStruct(
      tipo: tipo,
      done: done,
      fecha: fecha,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ActividadStruct? updateActividadStruct(
  ActividadStruct? actividad, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    actividad
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addActividadStructData(
  Map<String, dynamic> firestoreData,
  ActividadStruct? actividad,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (actividad == null) {
    return;
  }
  if (actividad.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && actividad.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final actividadData = getActividadFirestoreData(actividad, forFieldValue);
  final nestedData = actividadData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = actividad.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getActividadFirestoreData(
  ActividadStruct? actividad, [
  bool forFieldValue = false,
]) {
  if (actividad == null) {
    return {};
  }
  final firestoreData = mapToFirestore(actividad.toMap());

  // Add any Firestore field values
  actividad.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getActividadListFirestoreData(
  List<ActividadStruct>? actividads,
) =>
    actividads?.map((e) => getActividadFirestoreData(e, true)).toList() ?? [];
