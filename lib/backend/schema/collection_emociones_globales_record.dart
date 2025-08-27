import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Registros de emociones de todos los usuarios.
class CollectionEmocionesGlobalesRecord extends FirestoreRecord {
  CollectionEmocionesGlobalesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "emocion" field.
  String? _emocion;
  String get emocion => _emocion ?? '';
  bool hasEmocion() => _emocion != null;

  // "pregunta" field.
  String? _pregunta;
  String get pregunta => _pregunta ?? '';
  bool hasPregunta() => _pregunta != null;

  // "respuesta" field.
  String? _respuesta;
  String get respuesta => _respuesta ?? '';
  bool hasRespuesta() => _respuesta != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _emocion = snapshotData['emocion'] as String?;
    _pregunta = snapshotData['pregunta'] as String?;
    _respuesta = snapshotData['respuesta'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('collection_emociones_globales');

  static Stream<CollectionEmocionesGlobalesRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => CollectionEmocionesGlobalesRecord.fromSnapshot(s));

  static Future<CollectionEmocionesGlobalesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CollectionEmocionesGlobalesRecord.fromSnapshot(s));

  static CollectionEmocionesGlobalesRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      CollectionEmocionesGlobalesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CollectionEmocionesGlobalesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CollectionEmocionesGlobalesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CollectionEmocionesGlobalesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CollectionEmocionesGlobalesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCollectionEmocionesGlobalesRecordData({
  String? uid,
  String? emocion,
  String? pregunta,
  String? respuesta,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'emocion': emocion,
      'pregunta': pregunta,
      'respuesta': respuesta,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class CollectionEmocionesGlobalesRecordDocumentEquality
    implements Equality<CollectionEmocionesGlobalesRecord> {
  const CollectionEmocionesGlobalesRecordDocumentEquality();

  @override
  bool equals(CollectionEmocionesGlobalesRecord? e1,
      CollectionEmocionesGlobalesRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.emocion == e2?.emocion &&
        e1?.pregunta == e2?.pregunta &&
        e1?.respuesta == e2?.respuesta &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(CollectionEmocionesGlobalesRecord? e) => const ListEquality()
      .hash([e?.uid, e?.emocion, e?.pregunta, e?.respuesta, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is CollectionEmocionesGlobalesRecord;
}
