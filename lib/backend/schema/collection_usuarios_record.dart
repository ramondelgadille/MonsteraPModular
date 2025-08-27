import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CollectionUsuariosRecord extends FirestoreRecord {
  CollectionUsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _foto = snapshotData['foto'] as String?;
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _phone = snapshotData['phone'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('collection_usuarios');

  static Stream<CollectionUsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CollectionUsuariosRecord.fromSnapshot(s));

  static Future<CollectionUsuariosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CollectionUsuariosRecord.fromSnapshot(s));

  static CollectionUsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CollectionUsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CollectionUsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CollectionUsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CollectionUsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CollectionUsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCollectionUsuariosRecordData({
  String? uid,
  String? foto,
  String? name,
  String? email,
  String? password,
  String? phone,
  DateTime? createdTime,
  DateTime? editedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'foto': foto,
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'created_time': createdTime,
      'edited_time': editedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class CollectionUsuariosRecordDocumentEquality
    implements Equality<CollectionUsuariosRecord> {
  const CollectionUsuariosRecordDocumentEquality();

  @override
  bool equals(CollectionUsuariosRecord? e1, CollectionUsuariosRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.foto == e2?.foto &&
        e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.phone == e2?.phone &&
        e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime;
  }

  @override
  int hash(CollectionUsuariosRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.foto,
        e?.name,
        e?.email,
        e?.password,
        e?.phone,
        e?.createdTime,
        e?.editedTime
      ]);

  @override
  bool isValidKey(Object? o) => o is CollectionUsuariosRecord;
}
