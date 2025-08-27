import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  CollectionUsuariosRecord? actionOutput;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SubcollectionDailyNecesidadesRecord? docDaily;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CollectionDailyNecesidadesGlobalesRecord? docGlobalDaily;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SubcollectionEmocionesRecord? docEmociones;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CollectionEmocionesGlobalesRecord? docGlobalEmociones;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
