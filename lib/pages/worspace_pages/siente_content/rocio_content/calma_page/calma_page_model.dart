import '/flutter_flow/flutter_flow_util.dart';
import '/pages/worspace_pages/siente_content/rocio_content/calma_a_c_l_component/calma_a_c_l_component_widget.dart';
import '/pages/worspace_pages/siente_content/rocio_content/calma_e_r_component/calma_e_r_component_widget.dart';
import '/pages/worspace_pages/siente_content/rocio_content/calma_i_h_c_component/calma_i_h_c_component_widget.dart';
import '/pages/worspace_pages/siente_content/rocio_content/calma_m_m_c_component/calma_m_m_c_component_widget.dart';
import '/pages/worspace_pages/siente_content/rocio_content/calma_r_m_p_component/calma_r_m_p_component_widget.dart';
import '/pages/worspace_pages/siente_content/rocio_content/calma_s_s_a_c_component/calma_s_s_a_c_component_widget.dart';
import '/index.dart';
import 'calma_page_widget.dart' show CalmaPageWidget;
import 'package:flutter/material.dart';

class CalmaPageModel extends FlutterFlowModel<CalmaPageWidget> {
  ///  Local state fields for this page.

  bool tensionBool = false;

  bool entumecimientoBool = false;

  bool inflamacionBool = false;

  bool nadaBool = false;

  ///  State fields for stateful widgets in this page.

  // Model for CalmaRMPComponent component.
  late CalmaRMPComponentModel calmaRMPComponentModel;
  // Model for CalmaERComponent component.
  late CalmaERComponentModel calmaERComponentModel;
  // Model for CalmaACLComponent component.
  late CalmaACLComponentModel calmaACLComponentModel;
  // Model for CalmaSSACComponent component.
  late CalmaSSACComponentModel calmaSSACComponentModel;
  // Model for CalmaMMCComponent component.
  late CalmaMMCComponentModel calmaMMCComponentModel;
  // Model for CalmaIHCComponent component.
  late CalmaIHCComponentModel calmaIHCComponentModel;

  @override
  void initState(BuildContext context) {
    calmaRMPComponentModel =
        createModel(context, () => CalmaRMPComponentModel());
    calmaERComponentModel = createModel(context, () => CalmaERComponentModel());
    calmaACLComponentModel =
        createModel(context, () => CalmaACLComponentModel());
    calmaSSACComponentModel =
        createModel(context, () => CalmaSSACComponentModel());
    calmaMMCComponentModel =
        createModel(context, () => CalmaMMCComponentModel());
    calmaIHCComponentModel =
        createModel(context, () => CalmaIHCComponentModel());
  }

  @override
  void dispose() {
    calmaRMPComponentModel.dispose();
    calmaERComponentModel.dispose();
    calmaACLComponentModel.dispose();
    calmaSSACComponentModel.dispose();
    calmaMMCComponentModel.dispose();
    calmaIHCComponentModel.dispose();
  }
}
