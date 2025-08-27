import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'daily_animo_page_model.dart';
export 'daily_animo_page_model.dart';

class DailyAnimoPageWidget extends StatefulWidget {
  const DailyAnimoPageWidget({super.key});

  static String routeName = 'DailyAnimoPage';
  static String routePath = '/dailyAnimoPage';

  @override
  State<DailyAnimoPageWidget> createState() => _DailyAnimoPageWidgetState();
}

class _DailyAnimoPageWidgetState extends State<DailyAnimoPageWidget>
    with TickerProviderStateMixin {
  late DailyAnimoPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DailyAnimoPageModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                icon: Icon(
                  Icons.close_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.goNamed(HomePageWidget.routeName);
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 100.0, 16.0, 0.0),
                        child: Text(
                          '¿Cómo te sientes?',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                font: GoogleFonts.nunito(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .fontStyle,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Text(
                                  'Selecciona una opción:',
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        font: GoogleFonts.nunito(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0xB7962724),
                                        icon: FaIcon(
                                          FontAwesomeIcons.solidAngry,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          await Future.wait([
                                            Future(() async {
                                              await FFAppState()
                                                  .docEmociones!
                                                  .update(
                                                      createSubcollectionEmocionesRecordData(
                                                    emocion: 'enojo',
                                                  ));
                                            }),
                                            Future(() async {
                                              // Dual write

                                              await FFAppState()
                                                  .docGlobalEmociones!
                                                  .update(
                                                      createCollectionEmocionesGlobalesRecordData(
                                                    emocion: 'enojo',
                                                  ));
                                            }),
                                          ]);

                                          context.pushNamed(
                                            DailySuenoPageWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                      Text(
                                        'Enojado',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.nunito(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0xB7243A96),
                                        icon: FaIcon(
                                          FontAwesomeIcons.solidSadCry,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          await Future.wait([
                                            Future(() async {
                                              await FFAppState()
                                                  .docEmociones!
                                                  .update(
                                                      createSubcollectionEmocionesRecordData(
                                                    emocion: 'tristeza',
                                                  ));
                                            }),
                                            Future(() async {
                                              // Dual write

                                              await FFAppState()
                                                  .docGlobalEmociones!
                                                  .update(
                                                      createCollectionEmocionesGlobalesRecordData(
                                                    emocion: 'tristeza',
                                                  ));
                                            }),
                                          ]);

                                          context.pushNamed(
                                            DailySuenoPageWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                      Text(
                                        'Triste',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.nunito(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        icon: FaIcon(
                                          FontAwesomeIcons.solidDizzy,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          await Future.wait([
                                            Future(() async {
                                              await FFAppState()
                                                  .docEmociones!
                                                  .update(
                                                      createSubcollectionEmocionesRecordData(
                                                    emocion: 'asco',
                                                  ));
                                            }),
                                            Future(() async {
                                              // Dual write

                                              await FFAppState()
                                                  .docGlobalEmociones!
                                                  .update(
                                                      createCollectionEmocionesGlobalesRecordData(
                                                    emocion: 'asco',
                                                  ));
                                            }),
                                          ]);

                                          context.pushNamed(
                                            DailySuenoPageWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                      Text(
                                        'Asco',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.nunito(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0xB796248A),
                                        icon: FaIcon(
                                          FontAwesomeIcons.solidFrownOpen,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          await Future.wait([
                                            Future(() async {
                                              await FFAppState()
                                                  .docEmociones!
                                                  .update(
                                                      createSubcollectionEmocionesRecordData(
                                                    emocion: 'miedo',
                                                  ));
                                            }),
                                            Future(() async {
                                              // Dual write

                                              await FFAppState()
                                                  .docGlobalEmociones!
                                                  .update(
                                                      createCollectionEmocionesGlobalesRecordData(
                                                    emocion: 'miedo',
                                                  ));
                                            }),
                                          ]);

                                          context.pushNamed(
                                            DailySuenoPageWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                      Text(
                                        'Miedo',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.nunito(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 8.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0xB7968324),
                                        icon: FaIcon(
                                          FontAwesomeIcons.solidGrinBeam,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          await Future.wait([
                                            Future(() async {
                                              await FFAppState()
                                                  .docEmociones!
                                                  .update(
                                                      createSubcollectionEmocionesRecordData(
                                                    emocion: 'alegria',
                                                  ));
                                            }),
                                            Future(() async {
                                              // Dual write

                                              await FFAppState()
                                                  .docGlobalEmociones!
                                                  .update(
                                                      createCollectionEmocionesGlobalesRecordData(
                                                    emocion: 'alegria',
                                                  ));
                                            }),
                                          ]);

                                          context.pushNamed(
                                            DailySuenoPageWidget.routeName,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                      Text(
                                        'Alegre',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.nunito(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
        ),
      ),
    );
  }
}
