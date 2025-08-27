import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Listados de preguntas.
class CollectionPreguntasEmocionesRecord extends FirestoreRecord {
  CollectionPreguntasEmocionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "enojo" field.
  List<PreguntaStruct>? _enojo;
  List<PreguntaStruct> get enojo => _enojo ?? const [];
  bool hasEnojo() => _enojo != null;

  // "tristeza" field.
  List<PreguntaStruct>? _tristeza;
  List<PreguntaStruct> get tristeza => _tristeza ?? const [];
  bool hasTristeza() => _tristeza != null;

  // "asco" field.
  List<PreguntaStruct>? _asco;
  List<PreguntaStruct> get asco => _asco ?? const [];
  bool hasAsco() => _asco != null;

  // "miedo" field.
  List<PreguntaStruct>? _miedo;
  List<PreguntaStruct> get miedo => _miedo ?? const [];
  bool hasMiedo() => _miedo != null;

  // "alegria" field.
  List<PreguntaStruct>? _alegria;
  List<PreguntaStruct> get alegria => _alegria ?? const [];
  bool hasAlegria() => _alegria != null;

  void _initializeFields() {
    _enojo = getStructList(
      snapshotData['enojo'],
      PreguntaStruct.fromMap,
    );
    _tristeza = getStructList(
      snapshotData['tristeza'],
      PreguntaStruct.fromMap,
    );
    _asco = getStructList(
      snapshotData['asco'],
      PreguntaStruct.fromMap,
    );
    _miedo = getStructList(
      snapshotData['miedo'],
      PreguntaStruct.fromMap,
    );
    _alegria = getStructList(
      snapshotData['alegria'],
      PreguntaStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('collection_preguntas_emociones');

  static Stream<CollectionPreguntasEmocionesRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => CollectionPreguntasEmocionesRecord.fromSnapshot(s));

  static Future<CollectionPreguntasEmocionesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CollectionPreguntasEmocionesRecord.fromSnapshot(s));

  static CollectionPreguntasEmocionesRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      CollectionPreguntasEmocionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CollectionPreguntasEmocionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CollectionPreguntasEmocionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CollectionPreguntasEmocionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CollectionPreguntasEmocionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCollectionPreguntasEmocionesRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class CollectionPreguntasEmocionesRecordDocumentEquality
    implements Equality<CollectionPreguntasEmocionesRecord> {
  const CollectionPreguntasEmocionesRecordDocumentEquality();

  @override
  bool equals(CollectionPreguntasEmocionesRecord? e1,
      CollectionPreguntasEmocionesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.enojo, e2?.enojo) &&
        listEquality.equals(e1?.tristeza, e2?.tristeza) &&
        listEquality.equals(e1?.asco, e2?.asco) &&
        listEquality.equals(e1?.miedo, e2?.miedo) &&
        listEquality.equals(e1?.alegria, e2?.alegria);
  }

  @override
  int hash(CollectionPreguntasEmocionesRecord? e) => const ListEquality()
      .hash([e?.enojo, e?.tristeza, e?.asco, e?.miedo, e?.alegria]);

  @override
  bool isValidKey(Object? o) => o is CollectionPreguntasEmocionesRecord;
}
