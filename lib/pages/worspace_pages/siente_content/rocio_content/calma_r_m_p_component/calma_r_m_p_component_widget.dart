import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'calma_r_m_p_component_model.dart';
export 'calma_r_m_p_component_model.dart';

/// Formulario de creación de una nueva tarea
class CalmaRMPComponentWidget extends StatefulWidget {
  const CalmaRMPComponentWidget({super.key});

  @override
  State<CalmaRMPComponentWidget> createState() =>
      _CalmaRMPComponentWidgetState();
}

class _CalmaRMPComponentWidgetState extends State<CalmaRMPComponentWidget> {
  late CalmaRMPComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalmaRMPComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: CarouselSlider(
        items: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: Text(
                  'Relajación Muscular Progresiva',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        font: GoogleFonts.nunito(
                          fontWeight: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Lottie.asset(
                  'assets/jsons/Animation_-_1751497325394.json',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                  animate: true,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '1',
                style: FlutterFlowTheme.of(context).displayLarge.override(
                      font: GoogleFonts.nunito(
                        fontWeight: FlutterFlowTheme.of(context)
                            .displayLarge
                            .fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).displayLarge.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).displayLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).displayLarge.fontStyle,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Text(
                  'Siéntate o recuéstate en un lugar tranquilo.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        font: GoogleFonts.nunito(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '2',
                style: FlutterFlowTheme.of(context).displayLarge.override(
                      font: GoogleFonts.nunito(
                        fontWeight: FlutterFlowTheme.of(context)
                            .displayLarge
                            .fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).displayLarge.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).displayLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).displayLarge.fontStyle,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Text(
                  'Aprieta los musculos de los pies por 5 segundos.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        font: GoogleFonts.nunito(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '3',
                style: FlutterFlowTheme.of(context).displayLarge.override(
                      font: GoogleFonts.nunito(
                        fontWeight: FlutterFlowTheme.of(context)
                            .displayLarge
                            .fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).displayLarge.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).displayLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).displayLarge.fontStyle,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Text(
                  'Suelta y siente la diferencia.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        font: GoogleFonts.nunito(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '4',
                style: FlutterFlowTheme.of(context).displayLarge.override(
                      font: GoogleFonts.nunito(
                        fontWeight: FlutterFlowTheme.of(context)
                            .displayLarge
                            .fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).displayLarge.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).displayLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).displayLarge.fontStyle,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Text(
                  'Repite con piernas, abdomen, hombros y rostro.\n🧘‍♀️ Inhala al tensar, exhala al soltar.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        font: GoogleFonts.nunito(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Text(
                  'Hazlo lentamente. Es una forma poderosa de liberar tensión.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        font: GoogleFonts.nunito(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelLarge.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      ),
                ),
              ),
            ],
          ),
        ],
        carouselController: _model.carouselController ??=
            CarouselSliderController(),
        options: CarouselOptions(
          initialPage: 0,
          viewportFraction: 1.0,
          disableCenter: true,
          enlargeCenterPage: true,
          enlargeFactor: 0.25,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          autoPlay: false,
          onPageChanged: (index, _) => _model.carouselCurrentIndex = index,
        ),
      ),
    );
  }
}
