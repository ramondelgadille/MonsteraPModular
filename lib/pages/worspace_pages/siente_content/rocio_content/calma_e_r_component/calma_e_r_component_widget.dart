import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'calma_e_r_component_model.dart';
export 'calma_e_r_component_model.dart';

/// Formulario de creación de una nueva tarea
class CalmaERComponentWidget extends StatefulWidget {
  const CalmaERComponentWidget({super.key});

  @override
  State<CalmaERComponentWidget> createState() => _CalmaERComponentWidgetState();
}

class _CalmaERComponentWidgetState extends State<CalmaERComponentWidget> {
  late CalmaERComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalmaERComponentModel());
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
                  'Estiramiento + Respiración Diafragmática',
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
                  'assets/jsons/Animation_-_1751498133844.json',
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
                  'Inhala elevando los brazos.',
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
                  'Exhala bajándolos lentamente.',
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
                  'Gira tu cuello suavemente de lado a lado.',
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
                  'Rueda tus hombros hacia atrás 5 veces.',
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
                '5',
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
                  'Coloca una mano sobre tu abdomen y respira 3 veces profundamente.',
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
                  'Hazlo cada hora o en momentos de tensión mental.',
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
