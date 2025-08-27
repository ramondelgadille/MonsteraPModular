import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema/util/firestore_util.dart';

import 'schema/collection_preguntas_red_record.dart';
import 'schema/collection_usuarios_record.dart';
import 'schema/subcollection_red_record.dart';
import 'schema/subcollection_tasks_record.dart';
import 'schema/subcollection_evento_record.dart';
import 'schema/subcollection_emociones_record.dart';
import 'schema/subcollection_daily_necesidades_record.dart';
import 'schema/collection_eventos_globales_record.dart';
import 'schema/collection_emociones_globales_record.dart';
import 'schema/collection_preguntas_emociones_record.dart';
import 'schema/collection_daily_necesidades_globales_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart' hide Order;
export 'package:firebase_core/firebase_core.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/collection_preguntas_red_record.dart';
export 'schema/collection_usuarios_record.dart';
export 'schema/subcollection_red_record.dart';
export 'schema/subcollection_tasks_record.dart';
export 'schema/subcollection_evento_record.dart';
export 'schema/subcollection_emociones_record.dart';
export 'schema/subcollection_daily_necesidades_record.dart';
export 'schema/collection_eventos_globales_record.dart';
export 'schema/collection_emociones_globales_record.dart';
export 'schema/collection_preguntas_emociones_record.dart';
export 'schema/collection_daily_necesidades_globales_record.dart';

/// Functions to query CollectionPreguntasRedRecords (as a Stream and as a Future).
Future<int> queryCollectionPreguntasRedRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CollectionPreguntasRedRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CollectionPreguntasRedRecord>> queryCollectionPreguntasRedRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CollectionPreguntasRedRecord.collection,
      CollectionPreguntasRedRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CollectionPreguntasRedRecord>>
    queryCollectionPreguntasRedRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          CollectionPreguntasRedRecord.collection,
          CollectionPreguntasRedRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query CollectionUsuariosRecords (as a Stream and as a Future).
Future<int> queryCollectionUsuariosRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CollectionUsuariosRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CollectionUsuariosRecord>> queryCollectionUsuariosRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CollectionUsuariosRecord.collection,
      CollectionUsuariosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CollectionUsuariosRecord>> queryCollectionUsuariosRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CollectionUsuariosRecord.collection,
      CollectionUsuariosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SubcollectionRedRecords (as a Stream and as a Future).
Future<int> querySubcollectionRedRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SubcollectionRedRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SubcollectionRedRecord>> querySubcollectionRedRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SubcollectionRedRecord.collection(parent),
      SubcollectionRedRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SubcollectionRedRecord>> querySubcollectionRedRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SubcollectionRedRecord.collection(parent),
      SubcollectionRedRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SubcollectionTasksRecords (as a Stream and as a Future).
Future<int> querySubcollectionTasksRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SubcollectionTasksRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SubcollectionTasksRecord>> querySubcollectionTasksRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SubcollectionTasksRecord.collection(parent),
      SubcollectionTasksRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SubcollectionTasksRecord>> querySubcollectionTasksRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SubcollectionTasksRecord.collection(parent),
      SubcollectionTasksRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SubcollectionEventoRecords (as a Stream and as a Future).
Future<int> querySubcollectionEventoRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SubcollectionEventoRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SubcollectionEventoRecord>> querySubcollectionEventoRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SubcollectionEventoRecord.collection(parent),
      SubcollectionEventoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SubcollectionEventoRecord>> querySubcollectionEventoRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SubcollectionEventoRecord.collection(parent),
      SubcollectionEventoRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SubcollectionEmocionesRecords (as a Stream and as a Future).
Future<int> querySubcollectionEmocionesRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SubcollectionEmocionesRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SubcollectionEmocionesRecord>> querySubcollectionEmocionesRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SubcollectionEmocionesRecord.collection(parent),
      SubcollectionEmocionesRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SubcollectionEmocionesRecord>>
    querySubcollectionEmocionesRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          SubcollectionEmocionesRecord.collection(parent),
          SubcollectionEmocionesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query SubcollectionDailyNecesidadesRecords (as a Stream and as a Future).
Future<int> querySubcollectionDailyNecesidadesRecordCount({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SubcollectionDailyNecesidadesRecord.collection(parent),
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SubcollectionDailyNecesidadesRecord>>
    querySubcollectionDailyNecesidadesRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          SubcollectionDailyNecesidadesRecord.collection(parent),
          SubcollectionDailyNecesidadesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<SubcollectionDailyNecesidadesRecord>>
    querySubcollectionDailyNecesidadesRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          SubcollectionDailyNecesidadesRecord.collection(parent),
          SubcollectionDailyNecesidadesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query CollectionEventosGlobalesRecords (as a Stream and as a Future).
Future<int> queryCollectionEventosGlobalesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CollectionEventosGlobalesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CollectionEventosGlobalesRecord>>
    queryCollectionEventosGlobalesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          CollectionEventosGlobalesRecord.collection,
          CollectionEventosGlobalesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<CollectionEventosGlobalesRecord>>
    queryCollectionEventosGlobalesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          CollectionEventosGlobalesRecord.collection,
          CollectionEventosGlobalesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query CollectionEmocionesGlobalesRecords (as a Stream and as a Future).
Future<int> queryCollectionEmocionesGlobalesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CollectionEmocionesGlobalesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CollectionEmocionesGlobalesRecord>>
    queryCollectionEmocionesGlobalesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          CollectionEmocionesGlobalesRecord.collection,
          CollectionEmocionesGlobalesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<CollectionEmocionesGlobalesRecord>>
    queryCollectionEmocionesGlobalesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          CollectionEmocionesGlobalesRecord.collection,
          CollectionEmocionesGlobalesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query CollectionPreguntasEmocionesRecords (as a Stream and as a Future).
Future<int> queryCollectionPreguntasEmocionesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CollectionPreguntasEmocionesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CollectionPreguntasEmocionesRecord>>
    queryCollectionPreguntasEmocionesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          CollectionPreguntasEmocionesRecord.collection,
          CollectionPreguntasEmocionesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<CollectionPreguntasEmocionesRecord>>
    queryCollectionPreguntasEmocionesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          CollectionPreguntasEmocionesRecord.collection,
          CollectionPreguntasEmocionesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query CollectionDailyNecesidadesGlobalesRecords (as a Stream and as a Future).
Future<int> queryCollectionDailyNecesidadesGlobalesRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CollectionDailyNecesidadesGlobalesRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CollectionDailyNecesidadesGlobalesRecord>>
    queryCollectionDailyNecesidadesGlobalesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          CollectionDailyNecesidadesGlobalesRecord.collection,
          CollectionDailyNecesidadesGlobalesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<CollectionDailyNecesidadesGlobalesRecord>>
    queryCollectionDailyNecesidadesGlobalesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          CollectionDailyNecesidadesGlobalesRecord.collection,
          CollectionDailyNecesidadesGlobalesRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count!);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Filter filterIn(String field, List? list) => (list?.isEmpty ?? true)
    ? Filter(field, whereIn: null)
    : Filter(field, whereIn: list);

Filter filterArrayContainsAny(String field, List? list) =>
    (list?.isEmpty ?? true)
        ? Filter(field, arrayContainsAny: null)
        : Filter(field, arrayContainsAny: list);

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}
