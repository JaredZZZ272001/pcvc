import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_max/flutter_max_theme.dart';
import '/flutter_max/flutter_max_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReporteModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txt_repor widget.
  TextEditingController? txtReporController;
  String? Function(BuildContext, String?)? txtReporControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtReporController?.dispose();
  }

  /// Additional helper methods are added here.

}
