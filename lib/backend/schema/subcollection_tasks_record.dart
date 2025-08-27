import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Tareas del usuario.
class SubcollectionTasksRecord extends FirestoreRecord {
  SubcollectionTasksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "tiempo" field.
  int? _tiempo;
  int get tiempo => _tiempo ?? 0;
  bool hasTiempo() => _tiempo != null;

  // "prioridad" field.
  int? _prioridad;
  int get prioridad => _prioridad ?? 0;
  bool hasPrioridad() => _prioridad != null;

  // "estado" field.
  int? _estado;
  int get estado => _estado ?? 0;
  bool hasEstado() => _estado != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _descripcion = snapshotData['descripcion'] as String?;
    _tiempo = castToType<int>(snapshotData['tiempo']);
    _prioridad = castToType<int>(snapshotData['prioridad']);
    _estado = castToType<int>(snapshotData['estado']);
    _fecha = snapshotData['fecha'] as DateTime?;
    _categoria = snapshotData['categoria'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('subcollection_tasks')
          : FirebaseFirestore.instance.collectionGroup('subcollection_tasks');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('subcollection_tasks').doc(id);

  static Stream<SubcollectionTasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubcollectionTasksRecord.fromSnapshot(s));

  static Future<SubcollectionTasksRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SubcollectionTasksRecord.fromSnapshot(s));

  static SubcollectionTasksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubcollectionTasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubcollectionTasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubcollectionTasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubcollectionTasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubcollectionTasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubcollectionTasksRecordData({
  String? descripcion,
  int? tiempo,
  int? prioridad,
  int? estado,
  DateTime? fecha,
  String? categoria,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descripcion': descripcion,
      'tiempo': tiempo,
      'prioridad': prioridad,
      'estado': estado,
      'fecha': fecha,
      'categoria': categoria,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubcollectionTasksRecordDocumentEquality
    implements Equality<SubcollectionTasksRecord> {
  const SubcollectionTasksRecordDocumentEquality();

  @override
  bool equals(SubcollectionTasksRecord? e1, SubcollectionTasksRecord? e2) {
    return e1?.descripcion == e2?.descripcion &&
        e1?.tiempo == e2?.tiempo &&
        e1?.prioridad == e2?.prioridad &&
        e1?.estado == e2?.estado &&
        e1?.fecha == e2?.fecha &&
        e1?.categoria == e2?.categoria;
  }

  @override
  int hash(SubcollectionTasksRecord? e) => const ListEquality().hash([
        e?.descripcion,
        e?.tiempo,
        e?.prioridad,
        e?.estado,
        e?.fecha,
        e?.categoria
      ]);

  @override
  bool isValidKey(Object? o) => o is SubcollectionTasksRecord;
}
