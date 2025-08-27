import '/flutter_flow/flutter_flow_util.dart';
import '/pages/worspace_pages/siente_content/agua_profunda_content/journal_component/journal_component_widget.dart';
import 'miedo_page_widget.dart' show MiedoPageWidget;
import 'package:flutter/material.dart';

class MiedoPageModel extends FlutterFlowModel<MiedoPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for JournalComponent component.
  late JournalComponentModel journalComponentModel;

  @override
  void initState(BuildContext context) {
    journalComponentModel = createModel(context, () => JournalComponentModel());
  }

  @override
  void dispose() {
    journalComponentModel.dispose();
  }
}
