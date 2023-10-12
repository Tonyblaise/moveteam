import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'create_request_widget.dart' show CreateRequestWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateRequestModel extends FlutterFlowModel<CreateRequestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for companyName widget.
  TextEditingController? companyNameController;
  String? Function(BuildContext, String?)? companyNameControllerValidator;
  String? _companyNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for companyEmail widget.
  TextEditingController? companyEmailController;
  String? Function(BuildContext, String?)? companyEmailControllerValidator;
  String? _companyEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for DropDownVehicleType widget.
  String? dropDownVehicleTypeValue;
  FormFieldController<String>? dropDownVehicleTypeValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for numberOfVehicles widget.
  TextEditingController? numberOfVehiclesController;
  String? Function(BuildContext, String?)? numberOfVehiclesControllerValidator;
  // State field(s) for moreDetailsInput widget.
  TextEditingController? moreDetailsInputController;
  String? Function(BuildContext, String?)? moreDetailsInputControllerValidator;
  // State field(s) for pickupLocation widget.
  var pickupLocationValue = FFPlace();
  // State field(s) for dropOffLocation widget.
  var dropOffLocationValue = FFPlace();
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  RequestsRecord? requests;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  ChatsRecord? chat;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    companyNameControllerValidator = _companyNameControllerValidator;
    companyEmailControllerValidator = _companyEmailControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    companyNameController?.dispose();
    companyEmailController?.dispose();
    numberOfVehiclesController?.dispose();
    moreDetailsInputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
