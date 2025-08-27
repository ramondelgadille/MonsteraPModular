import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Contiene nombre y resultados obtenidos a traves de formulario de Red de
/// Raíces.
class SubcollectionRedRecord extends FirestoreRecord {
  SubcollectionRedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "resultado" field.
  ResultadoRedStruct? _resultado;
  ResultadoRedStruct get resultado => _resultado ?? ResultadoRedStruct();
  bool hasResultado() => _resultado != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _resultado = snapshotData['resultado'] is ResultadoRedStruct
        ? snapshotData['resultado']
        : ResultadoRedStruct.maybeFromMap(snapshotData['resultado']);
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('subcollection_red')
          : FirebaseFirestore.instance.collectionGroup('subcollection_red');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('subcollection_red').doc(id);

  static Stream<SubcollectionRedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubcollectionRedRecord.fromSnapshot(s));

  static Future<SubcollectionRedRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SubcollectionRedRecord.fromSnapshot(s));

  static SubcollectionRedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubcollectionRedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubcollectionRedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubcollectionRedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubcollectionRedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubcollectionRedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubcollectionRedRecordData({
  ResultadoRedStruct? resultado,
  DateTime? createdTime,
  DateTime? editedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'resultado': ResultadoRedStruct().toMap(),
      'created_time': createdTime,
      'edited_time': editedTime,
    }.withoutNulls,
  );

  // Handle nested data for "resultado" field.
  addResultadoRedStructData(firestoreData, resultado, 'resultado');

  return firestoreData;
}

class SubcollectionRedRecordDocumentEquality
    implements Equality<SubcollectionRedRecord> {
  const SubcollectionRedRecordDocumentEquality();

  @override
  bool equals(SubcollectionRedRecord? e1, SubcollectionRedRecord? e2) {
    return e1?.resultado == e2?.resultado &&
        e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime;
  }

  @override
  int hash(SubcollectionRedRecord? e) =>
      const ListEquality().hash([e?.resultado, e?.createdTime, e?.editedTime]);

  @override
  bool isValidKey(Object? o) => o is SubcollectionRedRecord;
}
