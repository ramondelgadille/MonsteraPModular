import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'red_name_widget.dart' show RedNameWidget;
import 'package:flutter/material.dart';

class RedNameModel extends FlutterFlowModel<RedNameWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();
  }
}
