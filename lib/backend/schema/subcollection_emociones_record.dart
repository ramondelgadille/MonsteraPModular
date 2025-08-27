import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Registros de emociones.
class SubcollectionEmocionesRecord extends FirestoreRecord {
  SubcollectionEmocionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _emocion = snapshotData['emocion'] as String?;
    _pregunta = snapshotData['pregunta'] as String?;
    _respuesta = snapshotData['respuesta'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('subcollection_emociones')
          : FirebaseFirestore.instance
              .collectionGroup('subcollection_emociones');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('subcollection_emociones').doc(id);

  static Stream<SubcollectionEmocionesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => SubcollectionEmocionesRecord.fromSnapshot(s));

  static Future<SubcollectionEmocionesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SubcollectionEmocionesRecord.fromSnapshot(s));

  static SubcollectionEmocionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubcollectionEmocionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubcollectionEmocionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubcollectionEmocionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubcollectionEmocionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubcollectionEmocionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubcollectionEmocionesRecordData({
  String? id,
  String? emocion,
  String? pregunta,
  String? respuesta,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'emocion': emocion,
      'pregunta': pregunta,
      'respuesta': respuesta,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubcollectionEmocionesRecordDocumentEquality
    implements Equality<SubcollectionEmocionesRecord> {
  const SubcollectionEmocionesRecordDocumentEquality();

  @override
  bool equals(
      SubcollectionEmocionesRecord? e1, SubcollectionEmocionesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.emocion == e2?.emocion &&
        e1?.pregunta == e2?.pregunta &&
        e1?.respuesta == e2?.respuesta &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(SubcollectionEmocionesRecord? e) => const ListEquality()
      .hash([e?.id, e?.emocion, e?.pregunta, e?.respuesta, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is SubcollectionEmocionesRecord;
}
