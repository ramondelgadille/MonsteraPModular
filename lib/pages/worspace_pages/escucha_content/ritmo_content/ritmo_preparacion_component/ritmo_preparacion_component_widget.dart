import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ritmo_preparacion_component_model.dart';
export 'ritmo_preparacion_component_model.dart';

/// example
///
class RitmoPreparacionComponentWidget extends StatefulWidget {
  const RitmoPreparacionComponentWidget({super.key});

  @override
  State<RitmoPreparacionComponentWidget> createState() =>
      _RitmoPreparacionComponentWidgetState();
}

class _RitmoPreparacionComponentWidgetState
    extends State<RitmoPreparacionComponentWidget>
    with TickerProviderStateMixin {
  late RitmoPreparacionComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RitmoPreparacionComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController1.onStartTimer();
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 3600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 20.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 3600.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 3600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 20.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 3600.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 3600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 20.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 3600.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeIn,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 3600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 20.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 3600.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      10.0,
                    ),
                  )
                ],
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).primary,
                    FlutterFlowTheme.of(context).secondary
                  ],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  children: [
                    Opacity(
                      opacity: 0.0,
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FlutterFlowTimer(
                          initialTime: _model.timerInitialTimeMs1,
                          getDisplayTime: (value) =>
                              StopWatchTimer.getDisplayTime(
                            value,
                            hours: false,
                            minute: false,
                            milliSecond: false,
                          ),
                          controller: _model.timerController1,
                          updateStateInterval: Duration(milliseconds: 1000),
                          onChanged: (value, displayTime, shouldUpdate) {
                            _model.timerMilliseconds1 = value;
                            _model.timerValue1 = displayTime;
                            if (shouldUpdate) safeSetState(() {});
                          },
                          onEnded: () async {
                            _model.timerController2.onStartTimer();
                            if (animationsMap[
                                    'containerOnActionTriggerAnimation2'] !=
                                null) {
                              await animationsMap[
                                      'containerOnActionTriggerAnimation2']!
                                  .controller
                                  .forward(from: 0.0);
                            }
                          },
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .displayLarge
                              .override(
                                font: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displayLarge
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 48.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .displayLarge
                                    .fontStyle,
                              ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.spa_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 60.0,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Preparémonos',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.nunito(
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
            ),
            Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1A1A1A),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Busca una posición cómoda.',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.nunito(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                        Opacity(
                          opacity: 0.0,
                          child: FlutterFlowTimer(
                            initialTime: _model.timerInitialTimeMs2,
                            getDisplayTime: (value) =>
                                StopWatchTimer.getDisplayTime(
                              value,
                              hours: false,
                              minute: false,
                            ),
                            controller: _model.timerController2,
                            updateStateInterval: Duration(milliseconds: 1000),
                            onChanged: (value, displayTime, shouldUpdate) {
                              _model.timerMilliseconds2 = value;
                              _model.timerValue2 = displayTime;
                              if (shouldUpdate) safeSetState(() {});
                            },
                            onEnded: () async {
                              _model.timerController3.onStartTimer();
                              if (animationsMap[
                                      'containerOnActionTriggerAnimation3'] !=
                                  null) {
                                await animationsMap[
                                        'containerOnActionTriggerAnimation3']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                            },
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.nunito(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  color: Color(0xFFE90909),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ).animateOnActionTrigger(
                    animationsMap['containerOnActionTriggerAnimation2']!,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1A1A1A),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Puedes estar sentado o acostado.',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.nunito(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                        Opacity(
                          opacity: 0.0,
                          child: FlutterFlowTimer(
                            initialTime: _model.timerInitialTimeMs3,
                            getDisplayTime: (value) =>
                                StopWatchTimer.getDisplayTime(
                              value,
                              hours: false,
                              minute: false,
                            ),
                            controller: _model.timerController3,
                            updateStateInterval: Duration(milliseconds: 1000),
                            onChanged: (value, displayTime, shouldUpdate) {
                              _model.timerMilliseconds3 = value;
                              _model.timerValue3 = displayTime;
                              if (shouldUpdate) safeSetState(() {});
                            },
                            onEnded: () async {
                              _model.timerController4.onStartTimer();
                              if (animationsMap[
                                      'containerOnActionTriggerAnimation4'] !=
                                  null) {
                                await animationsMap[
                                        'containerOnActionTriggerAnimation4']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                            },
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.nunito(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  color: Color(0xFFF00707),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ).animateOnActionTrigger(
                    animationsMap['containerOnActionTriggerAnimation3']!,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1A1A1A),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Lleva tu atención al cuerpo.',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.nunito(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                        Opacity(
                          opacity: 0.0,
                          child: FlutterFlowTimer(
                            initialTime: _model.timerInitialTimeMs4,
                            getDisplayTime: (value) =>
                                StopWatchTimer.getDisplayTime(
                              value,
                              hours: false,
                              minute: false,
                            ),
                            controller: _model.timerController4,
                            updateStateInterval: Duration(milliseconds: 1000),
                            onChanged: (value, displayTime, shouldUpdate) {
                              _model.timerMilliseconds4 = value;
                              _model.timerValue4 = displayTime;
                              if (shouldUpdate) safeSetState(() {});
                            },
                            onEnded: () async {
                              _model.timerController5.onStartTimer();
                              if (animationsMap[
                                      'containerOnActionTriggerAnimation5'] !=
                                  null) {
                                await animationsMap[
                                        'containerOnActionTriggerAnimation5']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                            },
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.nunito(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  color: Color(0xFFE92C0C),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ).animateOnActionTrigger(
                    animationsMap['containerOnActionTriggerAnimation4']!,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1A1A1A),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Hoy, vamos a respirar con intención.',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.nunito(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                        Opacity(
                          opacity: 0.0,
                          child: FlutterFlowTimer(
                            initialTime: _model.timerInitialTimeMs5,
                            getDisplayTime: (value) =>
                                StopWatchTimer.getDisplayTime(
                              value,
                              hours: false,
                              minute: false,
                            ),
                            controller: _model.timerController5,
                            updateStateInterval: Duration(milliseconds: 1000),
                            onChanged: (value, displayTime, shouldUpdate) {
                              _model.timerMilliseconds5 = value;
                              _model.timerValue5 = displayTime;
                              if (shouldUpdate) safeSetState(() {});
                            },
                            onEnded: () async {
                              if (animationsMap[
                                      'containerOnActionTriggerAnimation1'] !=
                                  null) {
                                await animationsMap[
                                        'containerOnActionTriggerAnimation1']!
                                    .controller
                                    .forward(from: 0.0);
                              }
                              context.safePop();
                            },
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.nunito(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  color: Color(0xFFE92C0C),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ).animateOnActionTrigger(
                    animationsMap['containerOnActionTriggerAnimation5']!,
                  ),
                ),
              ],
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    )
        .animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!)
        .animateOnActionTrigger(
          animationsMap['containerOnActionTriggerAnimation1']!,
        );
  }
}
