import '/flutter_flow/flutter_flow_util.dart';
import 'calma_r_m_p_component_widget.dart' show CalmaRMPComponentWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CalmaRMPComponentModel extends FlutterFlowModel<CalmaRMPComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
