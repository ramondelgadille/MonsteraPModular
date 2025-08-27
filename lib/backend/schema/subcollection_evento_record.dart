import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Eventos especificos realizados por el usuario.
class SubcollectionEventoRecord extends FirestoreRecord {
  SubcollectionEventoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "duracion" field.
  double? _duracion;
  double get duracion => _duracion ?? 0.0;
  bool hasDuracion() => _duracion != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _duracion = castToType<double>(snapshotData['duracion']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('subcollection_evento')
          : FirebaseFirestore.instance.collectionGroup('subcollection_evento');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('subcollection_evento').doc(id);

  static Stream<SubcollectionEventoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubcollectionEventoRecord.fromSnapshot(s));

  static Future<SubcollectionEventoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SubcollectionEventoRecord.fromSnapshot(s));

  static SubcollectionEventoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubcollectionEventoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubcollectionEventoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubcollectionEventoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubcollectionEventoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubcollectionEventoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubcollectionEventoRecordData({
  String? id,
  String? tipo,
  DateTime? fecha,
  double? duracion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'tipo': tipo,
      'fecha': fecha,
      'duracion': duracion,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubcollectionEventoRecordDocumentEquality
    implements Equality<SubcollectionEventoRecord> {
  const SubcollectionEventoRecordDocumentEquality();

  @override
  bool equals(SubcollectionEventoRecord? e1, SubcollectionEventoRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.tipo == e2?.tipo &&
        e1?.fecha == e2?.fecha &&
        e1?.duracion == e2?.duracion;
  }

  @override
  int hash(SubcollectionEventoRecord? e) =>
      const ListEquality().hash([e?.id, e?.tipo, e?.fecha, e?.duracion]);

  @override
  bool isValidKey(Object? o) => o is SubcollectionEventoRecord;
}
