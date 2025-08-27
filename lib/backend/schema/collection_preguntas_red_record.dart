import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Preguntas cerradas de funcion Red de Raíces.
class CollectionPreguntasRedRecord extends FirestoreRecord {
  CollectionPreguntasRedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "escucha" field.
  PreguntaStruct? _escucha;
  PreguntaStruct get escucha => _escucha ?? PreguntaStruct();
  bool hasEscucha() => _escucha != null;

  // "ayuda" field.
  PreguntaStruct? _ayuda;
  PreguntaStruct get ayuda => _ayuda ?? PreguntaStruct();
  bool hasAyuda() => _ayuda != null;

  // "consejo" field.
  PreguntaStruct? _consejo;
  PreguntaStruct get consejo => _consejo ?? PreguntaStruct();
  bool hasConsejo() => _consejo != null;

  // "reconoce" field.
  PreguntaStruct? _reconoce;
  PreguntaStruct get reconoce => _reconoce ?? PreguntaStruct();
  bool hasReconoce() => _reconoce != null;

  // "comprende" field.
  PreguntaStruct? _comprende;
  PreguntaStruct get comprende => _comprende ?? PreguntaStruct();
  bool hasComprende() => _comprende != null;

  // "invita" field.
  PreguntaStruct? _invita;
  PreguntaStruct get invita => _invita ?? PreguntaStruct();
  bool hasInvita() => _invita != null;

  // "acepta" field.
  PreguntaStruct? _acepta;
  PreguntaStruct get acepta => _acepta ?? PreguntaStruct();
  bool hasAcepta() => _acepta != null;

  void _initializeFields() {
    _escucha = snapshotData['escucha'] is PreguntaStruct
        ? snapshotData['escucha']
        : PreguntaStruct.maybeFromMap(snapshotData['escucha']);
    _ayuda = snapshotData['ayuda'] is PreguntaStruct
        ? snapshotData['ayuda']
        : PreguntaStruct.maybeFromMap(snapshotData['ayuda']);
    _consejo = snapshotData['consejo'] is PreguntaStruct
        ? snapshotData['consejo']
        : PreguntaStruct.maybeFromMap(snapshotData['consejo']);
    _reconoce = snapshotData['reconoce'] is PreguntaStruct
        ? snapshotData['reconoce']
        : PreguntaStruct.maybeFromMap(snapshotData['reconoce']);
    _comprende = snapshotData['comprende'] is PreguntaStruct
        ? snapshotData['comprende']
        : PreguntaStruct.maybeFromMap(snapshotData['comprende']);
    _invita = snapshotData['invita'] is PreguntaStruct
        ? snapshotData['invita']
        : PreguntaStruct.maybeFromMap(snapshotData['invita']);
    _acepta = snapshotData['acepta'] is PreguntaStruct
        ? snapshotData['acepta']
        : PreguntaStruct.maybeFromMap(snapshotData['acepta']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('collection_preguntas_red');

  static Stream<CollectionPreguntasRedRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => CollectionPreguntasRedRecord.fromSnapshot(s));

  static Future<CollectionPreguntasRedRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CollectionPreguntasRedRecord.fromSnapshot(s));

  static CollectionPreguntasRedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CollectionPreguntasRedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CollectionPreguntasRedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CollectionPreguntasRedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CollectionPreguntasRedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CollectionPreguntasRedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCollectionPreguntasRedRecordData({
  PreguntaStruct? escucha,
  PreguntaStruct? ayuda,
  PreguntaStruct? consejo,
  PreguntaStruct? reconoce,
  PreguntaStruct? comprende,
  PreguntaStruct? invita,
  PreguntaStruct? acepta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'escucha': PreguntaStruct().toMap(),
      'ayuda': PreguntaStruct().toMap(),
      'consejo': PreguntaStruct().toMap(),
      'reconoce': PreguntaStruct().toMap(),
      'comprende': PreguntaStruct().toMap(),
      'invita': PreguntaStruct().toMap(),
      'acepta': PreguntaStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "escucha" field.
  addPreguntaStructData(firestoreData, escucha, 'escucha');

  // Handle nested data for "ayuda" field.
  addPreguntaStructData(firestoreData, ayuda, 'ayuda');

  // Handle nested data for "consejo" field.
  addPreguntaStructData(firestoreData, consejo, 'consejo');

  // Handle nested data for "reconoce" field.
  addPreguntaStructData(firestoreData, reconoce, 'reconoce');

  // Handle nested data for "comprende" field.
  addPreguntaStructData(firestoreData, comprende, 'comprende');

  // Handle nested data for "invita" field.
  addPreguntaStructData(firestoreData, invita, 'invita');

  // Handle nested data for "acepta" field.
  addPreguntaStructData(firestoreData, acepta, 'acepta');

  return firestoreData;
}

class CollectionPreguntasRedRecordDocumentEquality
    implements Equality<CollectionPreguntasRedRecord> {
  const CollectionPreguntasRedRecordDocumentEquality();

  @override
  bool equals(
      CollectionPreguntasRedRecord? e1, CollectionPreguntasRedRecord? e2) {
    return e1?.escucha == e2?.escucha &&
        e1?.ayuda == e2?.ayuda &&
        e1?.consejo == e2?.consejo &&
        e1?.reconoce == e2?.reconoce &&
        e1?.comprende == e2?.comprende &&
        e1?.invita == e2?.invita &&
        e1?.acepta == e2?.acepta;
  }

  @override
  int hash(CollectionPreguntasRedRecord? e) => const ListEquality().hash([
        e?.escucha,
        e?.ayuda,
        e?.consejo,
        e?.reconoce,
        e?.comprende,
        e?.invita,
        e?.acepta
      ]);

  @override
  bool isValidKey(Object? o) => o is CollectionPreguntasRedRecord;
}
