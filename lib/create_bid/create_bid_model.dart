import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateBidModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked;
  // State field(s) for moreDetailsInput widget.
  TextEditingController? moreDetailsInputController;
  String? Function(BuildContext, String?)? moreDetailsInputControllerValidator;
  // State field(s) for meetupLocation widget.
  var meetupLocationValue = FFPlace();
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  BidsRecord? bids;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  ChatsRecord? chat;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    moreDetailsInputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
