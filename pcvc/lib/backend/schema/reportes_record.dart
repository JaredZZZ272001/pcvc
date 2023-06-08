import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_max/flutter_max_util.dart';

class ReportesRecord extends FirestoreRecord {
  ReportesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fecha_re" field.
  DateTime? _fechaRe;
  DateTime? get fechaRe => _fechaRe;
  bool hasFechaRe() => _fechaRe != null;

  // "descrip_re" field.
  String? _descripRe;
  String get descripRe => _descripRe ?? '';
  bool hasDescripRe() => _descripRe != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "usuario_re" field.
  String? _usuarioRe;
  String get usuarioRe => _usuarioRe ?? '';
  bool hasUsuarioRe() => _usuarioRe != null;

  void _initializeFields() {
    _fechaRe = snapshotData['fecha_re'] as DateTime?;
    _descripRe = snapshotData['descrip_re'] as String?;
    _status = snapshotData['status'] as String?;
    _usuarioRe = snapshotData['usuario_re'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reportes');

  static Stream<ReportesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportesRecord.fromSnapshot(s));

  static Future<ReportesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportesRecord.fromSnapshot(s));

  static ReportesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportesRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createReportesRecordData({
  DateTime? fechaRe,
  String? descripRe,
  String? status,
  String? usuarioRe,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha_re': fechaRe,
      'descrip_re': descripRe,
      'status': status,
      'usuario_re': usuarioRe,
    }.withoutNulls,
  );

  return firestoreData;
}
