import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Eventos de todos los usuarios, para analíticos.
class CollectionEventosGlobalesRecord extends FirestoreRecord {
  CollectionEventosGlobalesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

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

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _uid = snapshotData['uid'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _duracion = castToType<double>(snapshotData['duracion']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('collection_eventos_globales');

  static Stream<CollectionEventosGlobalesRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => CollectionEventosGlobalesRecord.fromSnapshot(s));

  static Future<CollectionEventosGlobalesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CollectionEventosGlobalesRecord.fromSnapshot(s));

  static CollectionEventosGlobalesRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      CollectionEventosGlobalesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CollectionEventosGlobalesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CollectionEventosGlobalesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CollectionEventosGlobalesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CollectionEventosGlobalesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCollectionEventosGlobalesRecordData({
  String? id,
  String? uid,
  String? tipo,
  DateTime? fecha,
  double? duracion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'uid': uid,
      'tipo': tipo,
      'fecha': fecha,
      'duracion': duracion,
    }.withoutNulls,
  );

  return firestoreData;
}

class CollectionEventosGlobalesRecordDocumentEquality
    implements Equality<CollectionEventosGlobalesRecord> {
  const CollectionEventosGlobalesRecordDocumentEquality();

  @override
  bool equals(CollectionEventosGlobalesRecord? e1,
      CollectionEventosGlobalesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.uid == e2?.uid &&
        e1?.tipo == e2?.tipo &&
        e1?.fecha == e2?.fecha &&
        e1?.duracion == e2?.duracion;
  }

  @override
  int hash(CollectionEventosGlobalesRecord? e) => const ListEquality()
      .hash([e?.id, e?.uid, e?.tipo, e?.fecha, e?.duracion]);

  @override
  bool isValidKey(Object? o) => o is CollectionEventosGlobalesRecord;
}
