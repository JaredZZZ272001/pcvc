import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_max/flutter_max_util.dart';

class CategoriasRecord extends FirestoreRecord {
  CategoriasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre_C" field.
  String? _nombreC;
  String get nombreC => _nombreC ?? '';
  bool hasNombreC() => _nombreC != null;

  // "descrip_c" field.
  String? _descripC;
  String get descripC => _descripC ?? '';
  bool hasDescripC() => _descripC != null;

  // "img_c" field.
  String? _imgC;
  String get imgC => _imgC ?? '';
  bool hasImgC() => _imgC != null;

  void _initializeFields() {
    _nombreC = snapshotData['nombre_C'] as String?;
    _descripC = snapshotData['descrip_c'] as String?;
    _imgC = snapshotData['img_c'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categorias');

  static Stream<CategoriasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriasRecord.fromSnapshot(s));

  static Future<CategoriasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoriasRecord.fromSnapshot(s));

  static CategoriasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriasRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createCategoriasRecordData({
  String? nombreC,
  String? descripC,
  String? imgC,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre_C': nombreC,
      'descrip_c': descripC,
      'img_c': imgC,
    }.withoutNulls,
  );

  return firestoreData;
}
