import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_max/flutter_max_util.dart';

class NoticiasRecord extends FirestoreRecord {
  NoticiasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name_n" field.
  String? _nameN;
  String get nameN => _nameN ?? '';
  bool hasNameN() => _nameN != null;

  // "descrip_n" field.
  String? _descripN;
  String get descripN => _descripN ?? '';
  bool hasDescripN() => _descripN != null;

  // "foto_n" field.
  String? _fotoN;
  String get fotoN => _fotoN ?? '';
  bool hasFotoN() => _fotoN != null;

  void _initializeFields() {
    _nameN = snapshotData['name_n'] as String?;
    _descripN = snapshotData['descrip_n'] as String?;
    _fotoN = snapshotData['foto_n'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('noticias');

  static Stream<NoticiasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NoticiasRecord.fromSnapshot(s));

  static Future<NoticiasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NoticiasRecord.fromSnapshot(s));

  static NoticiasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NoticiasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NoticiasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NoticiasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NoticiasRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createNoticiasRecordData({
  String? nameN,
  String? descripN,
  String? fotoN,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name_n': nameN,
      'descrip_n': descripN,
      'foto_n': fotoN,
    }.withoutNulls,
  );

  return firestoreData;
}
