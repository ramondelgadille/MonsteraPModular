import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'comunicacion_page_widget.dart' show ComunicacionPageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ComunicacionPageModel extends FlutterFlowModel<ComunicacionPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
