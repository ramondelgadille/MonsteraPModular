import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'calma_s_s_a_c_component_model.dart';
export 'calma_s_s_a_c_component_model.dart';

/// Formulario de creación de una nueva tarea
class CalmaSSACComponentWidget extends StatefulWidget {
  const CalmaSSACComponentWidget({super.key});

  @override
  State<CalmaSSACComponentWidget> createState() =>
      _CalmaSSACComponentWidgetState();
}

class _CalmaSSACComponentWidgetState extends State<CalmaSSACComponentWidget> {
  late CalmaSSACComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalmaSSACComponentModel());
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
                  'Sacudida Suave / Activación Corporal',
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
                  'assets/jsons/Animation_-_1751498794604.json',
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
                  'Sacude tus manos y pies suavemente por 1 minuto.',
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
                  'Mueve o estira las zonas rígidas (cuello, hombros).',
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
                  'Camina en círculos pequeños por unos minutos.',
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
                  'Es una forma simple de decirle al cuerpo: “Estoy aquí, me muevo, me siento vivo.”',
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
