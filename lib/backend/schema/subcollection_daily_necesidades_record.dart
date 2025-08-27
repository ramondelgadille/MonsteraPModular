import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Registro diario de necesidades.
class SubcollectionDailyNecesidadesRecord extends FirestoreRecord {
  SubcollectionDailyNecesidadesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "comer" field.
  bool? _comer;
  bool get comer => _comer ?? false;
  bool hasComer() => _comer != null;

  // "social" field.
  bool? _social;
  bool get social => _social ?? false;
  bool hasSocial() => _social != null;

  // "respirar" field.
  bool? _respirar;
  bool get respirar => _respirar ?? false;
  bool hasRespirar() => _respirar != null;

  // "disfrutar" field.
  bool? _disfrutar;
  bool get disfrutar => _disfrutar ?? false;
  bool hasDisfrutar() => _disfrutar != null;

  // "reconocer" field.
  bool? _reconocer;
  bool get reconocer => _reconocer ?? false;
  bool hasReconocer() => _reconocer != null;

  // "tension" field.
  bool? _tension;
  bool get tension => _tension ?? false;
  bool hasTension() => _tension != null;

  // "entumecimiento" field.
  bool? _entumecimiento;
  bool get entumecimiento => _entumecimiento ?? false;
  bool hasEntumecimiento() => _entumecimiento != null;

  // "inflamacion" field.
  bool? _inflamacion;
  bool get inflamacion => _inflamacion ?? false;
  bool hasInflamacion() => _inflamacion != null;

  // "dormir" field.
  int? _dormir;

  /// El 2 es la respuesta por defecto en UI, puede ser 1, 2 o 3, haciendo
  /// referencia a la calidad del sueño.
  int get dormir => _dormir ?? 0;
  bool hasDormir() => _dormir != null;

  // "energia" field.
  double? _energia;

  /// (50-100)
  double get energia => _energia ?? 0.0;
  bool hasEnergia() => _energia != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _fecha = snapshotData['fecha'] as DateTime?;
    _comer = snapshotData['comer'] as bool?;
    _social = snapshotData['social'] as bool?;
    _respirar = snapshotData['respirar'] as bool?;
    _disfrutar = snapshotData['disfrutar'] as bool?;
    _reconocer = snapshotData['reconocer'] as bool?;
    _tension = snapshotData['tension'] as bool?;
    _entumecimiento = snapshotData['entumecimiento'] as bool?;
    _inflamacion = snapshotData['inflamacion'] as bool?;
    _dormir = castToType<int>(snapshotData['dormir']);
    _energia = castToType<double>(snapshotData['energia']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('subcollection_daily_necesidades')
          : FirebaseFirestore.instance
              .collectionGroup('subcollection_daily_necesidades');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('subcollection_daily_necesidades').doc(id);

  static Stream<SubcollectionDailyNecesidadesRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => SubcollectionDailyNecesidadesRecord.fromSnapshot(s));

  static Future<SubcollectionDailyNecesidadesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref
          .get()
          .then((s) => SubcollectionDailyNecesidadesRecord.fromSnapshot(s));

  static SubcollectionDailyNecesidadesRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      SubcollectionDailyNecesidadesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubcollectionDailyNecesidadesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubcollectionDailyNecesidadesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubcollectionDailyNecesidadesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubcollectionDailyNecesidadesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubcollectionDailyNecesidadesRecordData({
  DateTime? fecha,
  bool? comer,
  bool? social,
  bool? respirar,
  bool? disfrutar,
  bool? reconocer,
  bool? tension,
  bool? entumecimiento,
  bool? inflamacion,
  int? dormir,
  double? energia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha': fecha,
      'comer': comer,
      'social': social,
      'respirar': respirar,
      'disfrutar': disfrutar,
      'reconocer': reconocer,
      'tension': tension,
      'entumecimiento': entumecimiento,
      'inflamacion': inflamacion,
      'dormir': dormir,
      'energia': energia,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubcollectionDailyNecesidadesRecordDocumentEquality
    implements Equality<SubcollectionDailyNecesidadesRecord> {
  const SubcollectionDailyNecesidadesRecordDocumentEquality();

  @override
  bool equals(SubcollectionDailyNecesidadesRecord? e1,
      SubcollectionDailyNecesidadesRecord? e2) {
    return e1?.fecha == e2?.fecha &&
        e1?.comer == e2?.comer &&
        e1?.social == e2?.social &&
        e1?.respirar == e2?.respirar &&
        e1?.disfrutar == e2?.disfrutar &&
        e1?.reconocer == e2?.reconocer &&
        e1?.tension == e2?.tension &&
        e1?.entumecimiento == e2?.entumecimiento &&
        e1?.inflamacion == e2?.inflamacion &&
        e1?.dormir == e2?.dormir &&
        e1?.energia == e2?.energia;
  }

  @override
  int hash(SubcollectionDailyNecesidadesRecord? e) =>
      const ListEquality().hash([
        e?.fecha,
        e?.comer,
        e?.social,
        e?.respirar,
        e?.disfrutar,
        e?.reconocer,
        e?.tension,
        e?.entumecimiento,
        e?.inflamacion,
        e?.dormir,
        e?.energia
      ]);

  @override
  bool isValidKey(Object? o) => o is SubcollectionDailyNecesidadesRecord;
}
