import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/nav_bar_pages/new_task_component/new_task_component_widget.dart';
import 'new_task_component_widget.dart' show NewTaskComponentWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NewTaskComponentModel extends FlutterFlowModel<NewTaskComponentWidget> {
  ///  Local state fields for this component.
  /// Tarea temporal creada por el componente
  TareaStruct? tareaActual;
  void updateTareaActualStruct(Function(TareaStruct) updateFn) {
    updateFn(tareaActual ??= TareaStruct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  int? dropDownValue1;
  FormFieldController<int>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
