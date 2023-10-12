import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'assign_serviceprovider_widget.dart' show AssignServiceproviderWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AssignServiceproviderModel
    extends FlutterFlowModel<AssignServiceproviderWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> invitedServiceProviders = [];
  void addToInvitedServiceProviders(DocumentReference item) =>
      invitedServiceProviders.add(item);
  void removeFromInvitedServiceProviders(DocumentReference item) =>
      invitedServiceProviders.remove(item);
  void removeAtIndexFromInvitedServiceProviders(int index) =>
      invitedServiceProviders.removeAt(index);
  void insertAtIndexInInvitedServiceProviders(
          int index, DocumentReference item) =>
      invitedServiceProviders.insert(index, item);
  void updateInvitedServiceProvidersAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      invitedServiceProviders[index] = updateFn(invitedServiceProviders[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.

  Map<UsersRecord, bool> checkboxValueMap = {};
  List<UsersRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
