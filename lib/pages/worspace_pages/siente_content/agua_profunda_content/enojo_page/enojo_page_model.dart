import '/flutter_flow/flutter_flow_util.dart';
import '/pages/worspace_pages/siente_content/agua_profunda_content/journal_component/journal_component_widget.dart';
import 'enojo_page_widget.dart' show EnojoPageWidget;
import 'package:flutter/material.dart';

class EnojoPageModel extends FlutterFlowModel<EnojoPageWidget> {
  ///  Local state fields for this page.

  List<String> preguntasPagina = [];
  void addToPreguntasPagina(String item) => preguntasPagina.add(item);
  void removeFromPreguntasPagina(String item) => preguntasPagina.remove(item);
  void removeAtIndexFromPreguntasPagina(int index) =>
      preguntasPagina.removeAt(index);
  void insertAtIndexInPreguntasPagina(int index, String item) =>
      preguntasPagina.insert(index, item);
  void updatePreguntasPaginaAtIndex(int index, Function(String) updateFn) =>
      preguntasPagina[index] = updateFn(preguntasPagina[index]);

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
