import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ritmo_abdominal_component_model.dart';
export 'ritmo_abdominal_component_model.dart';

/// example
///
class RitmoAbdominalComponentWidget extends StatefulWidget {
  const RitmoAbdominalComponentWidget({super.key});

  @override
  State<RitmoAbdominalComponentWidget> createState() =>
      _RitmoAbdominalComponentWidgetState();
}

class _RitmoAbdominalComponentWidgetState
    extends State<RitmoAbdominalComponentWidget> with TickerProviderStateMixin {
  late RitmoAbdominalComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RitmoAbdominalComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timer1Controller.onStartTimer();
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
            delay: 6600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 20.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 6600.0.ms,
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
            delay: 5600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 20.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 5600.0.ms,
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
            delay: 5600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 20.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 5600.0.ms,
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
            delay: 5600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 20.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 5600.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation6': AnimationInfo(
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
            delay: 5600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 20.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 5600.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation7': AnimationInfo(
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
            delay: 5600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 20.0),
          ),
          FadeEffect(
            curve: Curves.easeOut,
            delay: 5600.0.ms,
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
                  colors: [Color(0xB7962495), Color(0xCB962492)],
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
                          initialTime: _model.timer1InitialTimeMs,
                          getDisplayTime: (value) =>
                              StopWatchTimer.getDisplayTime(
                            value,
                            hours: false,
                            minute: false,
                            milliSecond: false,
                          ),
                          controller: _model.timer1Controller,
                          updateStateInterval: Duration(milliseconds: 1000),
                          onChanged: (value, displayTime, shouldUpdate) {
                            _model.timer1Milliseconds = value;
                            _model.timer1Value = displayTime;
                            if (shouldUpdate) safeSetState(() {});
                          },
                          onEnded: () async {
                            _model.timer2Controller.onStartTimer();
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
                      Icons.self_improvement_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 60.0,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Respiración Abdominal',
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
                        Opacity(
                          opacity: 0.0,
                          child: FlutterFlowTimer(
                            initialTime: _model.timer2InitialTimeMs,
                            getDisplayTime: (value) =>
                                StopWatchTimer.getDisplayTime(
                              value,
                              hours: false,
                              minute: false,
                            ),
                            controller: _model.timer2Controller,
                            updateStateInterval: Duration(milliseconds: 1000),
                            onChanged: (value, displayTime, shouldUpdate) {
                              _model.timer2Milliseconds = value;
                              _model.timer2Value = displayTime;
                              if (shouldUpdate) safeSetState(() {});
                            },
                            onEnded: () async {
                              _model.timer3Controller.onStartTimer();
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
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Exploraremos la respiración desde el abdomen.',
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
                              Text(
                                'Donde habita tu raíz y tu centro.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.nunito(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFCCCCCC),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.grain,
                                    color: Color(0xCB962492),
                                    size: 20.0,
                                  ),
                                  Text(
                                    'Comencemos',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.nunito(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xCB962492),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ].divide(SizedBox(height: 12.0)),
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
                        Opacity(
                          opacity: 0.0,
                          child: FlutterFlowTimer(
                            initialTime: _model.timer3InitialTimeMs,
                            getDisplayTime: (value) =>
                                StopWatchTimer.getDisplayTime(
                              value,
                              hours: false,
                              minute: false,
                            ),
                            controller: _model.timer3Controller,
                            updateStateInterval: Duration(milliseconds: 1000),
                            onChanged: (value, displayTime, shouldUpdate) {
                              _model.timer3Milliseconds = value;
                              _model.timer3Value = displayTime;
                              if (shouldUpdate) safeSetState(() {});
                            },
                            onEnded: () async {
                              _model.timer4Controller.onStartTimer();
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
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Inhala profundamente hacia tu abdomen. ',
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
                              Text(
                                'Siente cómo se expande.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.nunito(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFCCCCCC),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.eco,
                                    color: Color(0xCB962492),
                                    size: 20.0,
                                  ),
                                  Text(
                                    'Aprecia los detalles',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.nunito(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xCB962492),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ].divide(SizedBox(height: 12.0)),
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
                        Opacity(
                          opacity: 0.0,
                          child: FlutterFlowTimer(
                            initialTime: _model.timer4InitialTimeMs,
                            getDisplayTime: (value) =>
                                StopWatchTimer.getDisplayTime(
                              value,
                              hours: false,
                              minute: false,
                            ),
                            controller: _model.timer4Controller,
                            updateStateInterval: Duration(milliseconds: 1000),
                            onChanged: (value, displayTime, shouldUpdate) {
                              _model.timer4Milliseconds = value;
                              _model.timer4Value = displayTime;
                              if (shouldUpdate) safeSetState(() {});
                            },
                            onEnded: () async {
                              _model.timer5Controller.onStartTimer();
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
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Mantén el aire.',
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
                              Text(
                                'Tu centro está lleno, estable.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.nunito(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFCCCCCC),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.burn,
                                    color: Color(0xCB962492),
                                    size: 20.0,
                                  ),
                                  Text(
                                    'Nutre tu interior',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.nunito(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xCB962492),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ].divide(SizedBox(height: 12.0)),
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
                        Opacity(
                          opacity: 0.0,
                          child: FlutterFlowTimer(
                            initialTime: _model.timer5InitialTimeMs,
                            getDisplayTime: (value) =>
                                StopWatchTimer.getDisplayTime(
                              value,
                              hours: false,
                              minute: false,
                            ),
                            controller: _model.timer5Controller,
                            updateStateInterval: Duration(milliseconds: 1000),
                            onChanged: (value, displayTime, shouldUpdate) {
                              _model.timer5Milliseconds = value;
                              _model.timer5Value = displayTime;
                              if (shouldUpdate) safeSetState(() {});
                            },
                            onEnded: () async {
                              _model.timer6Controller.onStartTimer();
                              if (animationsMap[
                                      'containerOnActionTriggerAnimation6'] !=
                                  null) {
                                await animationsMap[
                                        'containerOnActionTriggerAnimation6']!
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
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Exhala despacio,',
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
                              Text(
                                'Dejando que el abdomen se relaje.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.nunito(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFCCCCCC),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.splotch,
                                    color: Color(0xCB962492),
                                    size: 20.0,
                                  ),
                                  Text(
                                    'Lo estás haciendo bien',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.nunito(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xCB962492),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                      ],
                    ),
                  ).animateOnActionTrigger(
                    animationsMap['containerOnActionTriggerAnimation5']!,
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
                        Opacity(
                          opacity: 0.0,
                          child: FlutterFlowTimer(
                            initialTime: _model.timer6InitialTimeMs,
                            getDisplayTime: (value) =>
                                StopWatchTimer.getDisplayTime(
                              value,
                              hours: false,
                              minute: false,
                            ),
                            controller: _model.timer6Controller,
                            updateStateInterval: Duration(milliseconds: 1000),
                            onChanged: (value, displayTime, shouldUpdate) {
                              _model.timer6Milliseconds = value;
                              _model.timer6Value = displayTime;
                              if (shouldUpdate) safeSetState(() {});
                            },
                            onEnded: () async {
                              _model.timer7Controller.onStartTimer();
                              if (animationsMap[
                                      'containerOnActionTriggerAnimation7'] !=
                                  null) {
                                await animationsMap[
                                        'containerOnActionTriggerAnimation7']!
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
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Quédate un momento sin aire. ',
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
                              Text(
                                'Descansa en tu base.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.nunito(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFCCCCCC),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.pause,
                                    color: Color(0xCB962492),
                                    size: 20.0,
                                  ),
                                  Text(
                                    'Con control',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.nunito(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xCB962492),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                      ],
                    ),
                  ).animateOnActionTrigger(
                    animationsMap['containerOnActionTriggerAnimation6']!,
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
                        Opacity(
                          opacity: 0.0,
                          child: FlutterFlowTimer(
                            initialTime: _model.timer7InitialTimeMs,
                            getDisplayTime: (value) =>
                                StopWatchTimer.getDisplayTime(
                              value,
                              hours: false,
                              minute: false,
                            ),
                            controller: _model.timer7Controller,
                            updateStateInterval: Duration(milliseconds: 1000),
                            onChanged: (value, displayTime, shouldUpdate) {
                              _model.timer7Milliseconds = value;
                              _model.timer7Value = displayTime;
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
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Una respiración completa.',
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
                              Text(
                                'Tu raíz está tranquila.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.nunito(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFFCCCCCC),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.favorite_rounded,
                                    color: Color(0xCB962492),
                                    size: 20.0,
                                  ),
                                  Text(
                                    'Agradece a tu curerpo.',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.nunito(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xCB962492),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                      ],
                    ),
                  ).animateOnActionTrigger(
                    animationsMap['containerOnActionTriggerAnimation7']!,
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
