import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'begin_component_model.dart';
export 'begin_component_model.dart';

/// un componente de incio en lo que carga el programa que diga Monstera en
/// grande y luego diga "este es tu espacio"
class BeginComponentWidget extends StatefulWidget {
  const BeginComponentWidget({
    super.key,
    int? duration,
  }) : this.duration = duration ?? 2000;

  final int duration;

  @override
  State<BeginComponentWidget> createState() => _BeginComponentWidgetState();
}

class _BeginComponentWidgetState extends State<BeginComponentWidget> {
  late BeginComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BeginComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _model.showComponent == true,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Opacity(
              opacity: 0.0,
              child: FlutterFlowTimer(
                initialTime: widget.duration,
                getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                  value,
                  hours: false,
                  milliSecond: false,
                ),
                controller: _model.timerController,
                updateStateInterval: Duration(milliseconds: 1000),
                onChanged: (value, displayTime, shouldUpdate) {
                  _model.timerMilliseconds = value;
                  _model.timerValue = displayTime;
                  if (shouldUpdate) safeSetState(() {});
                },
                onEnded: () async {
                  _model.showComponent = false;
                  safeSetState(() {});
                },
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      font: GoogleFonts.nunito(
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.asset(
                    'assets/jsons/Animation_-_1744660923654.json',
                    width: 200.0,
                    height: 212.2,
                    fit: BoxFit.contain,
                    repeat: false,
                    animate: true,
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Monstera',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          font: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .displayLarge
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FlutterFlowTheme.of(context)
                              .displayLarge
                              .fontStyle,
                        ),
                  ),
                  Text(
                    'Este es tu espacio',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          font: GoogleFonts.nunito(
                            fontWeight: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontStyle,
                        ),
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
