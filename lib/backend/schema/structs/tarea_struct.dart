// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

/// Tareas de Gestor de Tiempo
class TareaStruct extends FFFirebaseStruct {
  TareaStruct({
    /// Entrada de usuario de la descripción general de tarea.
    String? descripcion,

    /// Entrada de usuario con base a dropdown para medir una tarea.
    int? tiempo,

    /// Entrada de usuario que categoriza la tarea.
    String? categoria,

    /// Entradad de usuario que mide el nivel de prioridad de la tarea.
    int? prioridad,

    /// Estado de la tarea.
    String? estado,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _descripcion = descripcion,
        _tiempo = tiempo,
        _categoria = categoria,
        _prioridad = prioridad,
        _estado = estado,
        super(firestoreUtilData);

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  set descripcion(String? val) => _descripcion = val;

  bool hasDescripcion() => _descripcion != null;

  // "tiempo" field.
  int? _tiempo;
  int get tiempo => _tiempo ?? 0;
  set tiempo(int? val) => _tiempo = val;

  void incrementTiempo(int amount) => tiempo = tiempo + amount;

  bool hasTiempo() => _tiempo != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  set categoria(String? val) => _categoria = val;

  bool hasCategoria() => _categoria != null;

  // "prioridad" field.
  int? _prioridad;
  int get prioridad => _prioridad ?? 0;
  set prioridad(int? val) => _prioridad = val;

  void incrementPrioridad(int amount) => prioridad = prioridad + amount;

  bool hasPrioridad() => _prioridad != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  static TareaStruct fromMap(Map<String, dynamic> data) => TareaStruct(
        descripcion: data['descripcion'] as String?,
        tiempo: castToType<int>(data['tiempo']),
        categoria: data['categoria'] as String?,
        prioridad: castToType<int>(data['prioridad']),
        estado: data['estado'] as String?,
      );

  static TareaStruct? maybeFromMap(dynamic data) =>
      data is Map ? TareaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'descripcion': _descripcion,
        'tiempo': _tiempo,
        'categoria': _categoria,
        'prioridad': _prioridad,
        'estado': _estado,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'descripcion': serializeParam(
          _descripcion,
          ParamType.String,
        ),
        'tiempo': serializeParam(
          _tiempo,
          ParamType.int,
        ),
        'categoria': serializeParam(
          _categoria,
          ParamType.String,
        ),
        'prioridad': serializeParam(
          _prioridad,
          ParamType.int,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
      }.withoutNulls;

  static TareaStruct fromSerializableMap(Map<String, dynamic> data) =>
      TareaStruct(
        descripcion: deserializeParam(
          data['descripcion'],
          ParamType.String,
          false,
        ),
        tiempo: deserializeParam(
          data['tiempo'],
          ParamType.int,
          false,
        ),
        categoria: deserializeParam(
          data['categoria'],
          ParamType.String,
          false,
        ),
        prioridad: deserializeParam(
          data['prioridad'],
          ParamType.int,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TareaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TareaStruct &&
        descripcion == other.descripcion &&
        tiempo == other.tiempo &&
        categoria == other.categoria &&
        prioridad == other.prioridad &&
        estado == other.estado;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([descripcion, tiempo, categoria, prioridad, estado]);
}

TareaStruct createTareaStruct({
  String? descripcion,
  int? tiempo,
  String? categoria,
  int? prioridad,
  String? estado,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TareaStruct(
      descripcion: descripcion,
      tiempo: tiempo,
      categoria: categoria,
      prioridad: prioridad,
      estado: estado,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TareaStruct? updateTareaStruct(
  TareaStruct? tarea, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tarea
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTareaStructData(
  Map<String, dynamic> firestoreData,
  TareaStruct? tarea,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tarea == null) {
    return;
  }
  if (tarea.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tarea.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tareaData = getTareaFirestoreData(tarea, forFieldValue);
  final nestedData = tareaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tarea.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTareaFirestoreData(
  TareaStruct? tarea, [
  bool forFieldValue = false,
]) {
  if (tarea == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tarea.toMap());

  // Add any Firestore field values
  tarea.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTareaListFirestoreData(
  List<TareaStruct>? tareas,
) =>
    tareas?.map((e) => getTareaFirestoreData(e, true)).toList() ?? [];
