import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'ritmo_toracica_component_widget.dart' show RitmoToracicaComponentWidget;
import 'package:flutter/material.dart';

class RitmoToracicaComponentModel
    extends FlutterFlowModel<RitmoToracicaComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Timer1 widget.
  final timer1InitialTimeMs = 1000;
  int timer1Milliseconds = 1000;
  String timer1Value = StopWatchTimer.getDisplayTime(
    1000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timer1Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer2 widget.
  final timer2InitialTimeMs = 7400;
  int timer2Milliseconds = 7400;
  String timer2Value = StopWatchTimer.getDisplayTime(
    7400,
    hours: false,
    minute: false,
  );
  FlutterFlowTimerController timer2Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer3 widget.
  final timer3InitialTimeMs = 7400;
  int timer3Milliseconds = 7400;
  String timer3Value = StopWatchTimer.getDisplayTime(
    7400,
    hours: false,
    minute: false,
  );
  FlutterFlowTimerController timer3Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer4 widget.
  final timer4InitialTimeMs = 7400;
  int timer4Milliseconds = 7400;
  String timer4Value = StopWatchTimer.getDisplayTime(
    7400,
    hours: false,
    minute: false,
  );
  FlutterFlowTimerController timer4Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer5 widget.
  final timer5InitialTimeMs = 7400;
  int timer5Milliseconds = 7400;
  String timer5Value = StopWatchTimer.getDisplayTime(
    7400,
    hours: false,
    minute: false,
  );
  FlutterFlowTimerController timer5Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer6 widget.
  final timer6InitialTimeMs = 7400;
  int timer6Milliseconds = 7400;
  String timer6Value = StopWatchTimer.getDisplayTime(
    7400,
    hours: false,
    minute: false,
  );
  FlutterFlowTimerController timer6Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer7 widget.
  final timer7InitialTimeMs = 7400;
  int timer7Milliseconds = 7400;
  String timer7Value = StopWatchTimer.getDisplayTime(
    7400,
    hours: false,
    minute: false,
  );
  FlutterFlowTimerController timer7Controller =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timer1Controller.dispose();
    timer2Controller.dispose();
    timer3Controller.dispose();
    timer4Controller.dispose();
    timer5Controller.dispose();
    timer6Controller.dispose();
    timer7Controller.dispose();
  }
}
