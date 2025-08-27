import '/flutter_flow/flutter_flow_util.dart';
import 'journal_component_widget.dart' show JournalComponentWidget;
import 'package:flutter/material.dart';

class JournalComponentModel extends FlutterFlowModel<JournalComponentWidget> {
  ///  Local state fields for this component.

  bool showComponent = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
