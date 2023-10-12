import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'more_details_bid_widget.dart' show MoreDetailsBidWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MoreDetailsBidModel extends FlutterFlowModel<MoreDetailsBidWidget> {
  ///  Local state fields for this page.

  List<String> nos = [];
  void addToNos(String item) => nos.add(item);
  void removeFromNos(String item) => nos.remove(item);
  void removeAtIndexFromNos(int index) => nos.removeAt(index);
  void insertAtIndexInNos(int index, String item) => nos.insert(index, item);
  void updateNosAtIndex(int index, Function(String) updateFn) =>
      nos[index] = updateFn(nos[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
