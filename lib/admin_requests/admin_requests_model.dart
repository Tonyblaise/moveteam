import '/backend/backend.dart';
import '/components/request_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'admin_requests_widget.dart' show AdminRequestsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminRequestsModel extends FlutterFlowModel<AdminRequestsWidget> {
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
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
