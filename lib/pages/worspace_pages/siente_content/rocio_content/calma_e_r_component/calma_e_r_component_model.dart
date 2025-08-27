import '/flutter_flow/flutter_flow_util.dart';
import 'calma_e_r_component_widget.dart' show CalmaERComponentWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CalmaERComponentModel extends FlutterFlowModel<CalmaERComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
