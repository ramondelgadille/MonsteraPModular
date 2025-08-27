import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'ritmo_preparacion_component_widget.dart'
    show RitmoPreparacionComponentWidget;
import 'package:flutter/material.dart';

class RitmoPreparacionComponentModel
    extends FlutterFlowModel<RitmoPreparacionComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Timer widget.
  final timerInitialTimeMs1 = 1000;
  int timerMilliseconds1 = 1000;
  String timerValue1 = StopWatchTimer.getDisplayTime(
    1000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController1 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  final timerInitialTimeMs2 = 4500;
  int timerMilliseconds2 = 4500;
  String timerValue2 = StopWatchTimer.getDisplayTime(
    4500,
    hours: false,
    minute: false,
  );
  FlutterFlowTimerController timerController2 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  final timerInitialTimeMs3 = 4500;
  int timerMilliseconds3 = 4500;
  String timerValue3 = StopWatchTimer.getDisplayTime(
    4500,
    hours: false,
    minute: false,
  );
  FlutterFlowTimerController timerController3 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  final timerInitialTimeMs4 = 4500;
  int timerMilliseconds4 = 4500;
  String timerValue4 = StopWatchTimer.getDisplayTime(
    4500,
    hours: false,
    minute: false,
  );
  FlutterFlowTimerController timerController4 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  final timerInitialTimeMs5 = 4500;
  int timerMilliseconds5 = 4500;
  String timerValue5 = StopWatchTimer.getDisplayTime(
    4500,
    hours: false,
    minute: false,
  );
  FlutterFlowTimerController timerController5 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController1.dispose();
    timerController2.dispose();
    timerController3.dispose();
    timerController4.dispose();
    timerController5.dispose();
  }
}
