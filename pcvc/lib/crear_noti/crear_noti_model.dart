import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_max/flutter_max_icon_button.dart';
import '/flutter_max/flutter_max_theme.dart';
import '/flutter_max/flutter_max_util.dart';
import '/flutter_max/flutter_max_widgets.dart';
import '/flutter_max/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearNotiModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for titulo widget.
  TextEditingController? tituloController;
  String? Function(BuildContext, String?)? tituloControllerValidator;
  // State field(s) for desc widget.
  TextEditingController? descController;
  String? Function(BuildContext, String?)? descControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tituloController?.dispose();
    descController?.dispose();
  }

  /// Additional helper methods are added here.

}
