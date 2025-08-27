import '/flutter_flow/flutter_flow_util.dart';
import '/pages/worspace_pages/siente_content/agua_profunda_content/journal_component/journal_component_widget.dart';
import 'alegria_page_widget.dart' show AlegriaPageWidget;
import 'package:flutter/material.dart';

class AlegriaPageModel extends FlutterFlowModel<AlegriaPageWidget> {
  ///  Local state fields for this page.

  bool showJournal = true;

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
