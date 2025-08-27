import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _AppStateDoingTasks = prefs
              .getStringList('ff_AppStateDoingTasks')
              ?.map((x) {
                try {
                  return TareaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _AppStateDoingTasks;
    });
    _safeInit(() {
      _AppStateToDoTasks = prefs
              .getStringList('ff_AppStateToDoTasks')
              ?.map((x) {
                try {
                  return TareaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _AppStateToDoTasks;
    });
    _safeInit(() {
      _AppStateDoneTasks = prefs
              .getStringList('ff_AppStateDoneTasks')
              ?.map((x) {
                try {
                  return TareaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _AppStateDoneTasks;
    });
    _safeInit(() {
      _AcuerdosDone = prefs.getBool('ff_AcuerdosDone') ?? _AcuerdosDone;
    });
    _safeInit(() {
      _ComunicacionDone =
          prefs.getBool('ff_ComunicacionDone') ?? _ComunicacionDone;
    });
    _safeInit(() {
      _EscuchaActivaDone =
          prefs.getBool('ff_EscuchaActivaDone') ?? _EscuchaActivaDone;
    });
    _safeInit(() {
      _LenguajeDone = prefs.getBool('ff_LenguajeDone') ?? _LenguajeDone;
    });
    _safeInit(() {
      _LimitesDone = prefs.getBool('ff_LimitesDone') ?? _LimitesDone;
    });
    _safeInit(() {
      _user = prefs.getString('ff_user')?.ref ?? _user;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  /// Lista de Tareas haciendo.
  List<TareaStruct> _AppStateDoingTasks = [];
  List<TareaStruct> get AppStateDoingTasks => _AppStateDoingTasks;
  set AppStateDoingTasks(List<TareaStruct> value) {
    _AppStateDoingTasks = value;
    prefs.setStringList(
        'ff_AppStateDoingTasks', value.map((x) => x.serialize()).toList());
  }

  void addToAppStateDoingTasks(TareaStruct value) {
    AppStateDoingTasks.add(value);
    prefs.setStringList('ff_AppStateDoingTasks',
        _AppStateDoingTasks.map((x) => x.serialize()).toList());
  }

  void removeFromAppStateDoingTasks(TareaStruct value) {
    AppStateDoingTasks.remove(value);
    prefs.setStringList('ff_AppStateDoingTasks',
        _AppStateDoingTasks.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAppStateDoingTasks(int index) {
    AppStateDoingTasks.removeAt(index);
    prefs.setStringList('ff_AppStateDoingTasks',
        _AppStateDoingTasks.map((x) => x.serialize()).toList());
  }

  void updateAppStateDoingTasksAtIndex(
    int index,
    TareaStruct Function(TareaStruct) updateFn,
  ) {
    AppStateDoingTasks[index] = updateFn(_AppStateDoingTasks[index]);
    prefs.setStringList('ff_AppStateDoingTasks',
        _AppStateDoingTasks.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAppStateDoingTasks(int index, TareaStruct value) {
    AppStateDoingTasks.insert(index, value);
    prefs.setStringList('ff_AppStateDoingTasks',
        _AppStateDoingTasks.map((x) => x.serialize()).toList());
  }

  /// Lista de tareas por hacer.
  List<TareaStruct> _AppStateToDoTasks = [];
  List<TareaStruct> get AppStateToDoTasks => _AppStateToDoTasks;
  set AppStateToDoTasks(List<TareaStruct> value) {
    _AppStateToDoTasks = value;
    prefs.setStringList(
        'ff_AppStateToDoTasks', value.map((x) => x.serialize()).toList());
  }

  void addToAppStateToDoTasks(TareaStruct value) {
    AppStateToDoTasks.add(value);
    prefs.setStringList('ff_AppStateToDoTasks',
        _AppStateToDoTasks.map((x) => x.serialize()).toList());
  }

  void removeFromAppStateToDoTasks(TareaStruct value) {
    AppStateToDoTasks.remove(value);
    prefs.setStringList('ff_AppStateToDoTasks',
        _AppStateToDoTasks.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAppStateToDoTasks(int index) {
    AppStateToDoTasks.removeAt(index);
    prefs.setStringList('ff_AppStateToDoTasks',
        _AppStateToDoTasks.map((x) => x.serialize()).toList());
  }

  void updateAppStateToDoTasksAtIndex(
    int index,
    TareaStruct Function(TareaStruct) updateFn,
  ) {
    AppStateToDoTasks[index] = updateFn(_AppStateToDoTasks[index]);
    prefs.setStringList('ff_AppStateToDoTasks',
        _AppStateToDoTasks.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAppStateToDoTasks(int index, TareaStruct value) {
    AppStateToDoTasks.insert(index, value);
    prefs.setStringList('ff_AppStateToDoTasks',
        _AppStateToDoTasks.map((x) => x.serialize()).toList());
  }

  /// Lista de tareas hechas.
  List<TareaStruct> _AppStateDoneTasks = [];
  List<TareaStruct> get AppStateDoneTasks => _AppStateDoneTasks;
  set AppStateDoneTasks(List<TareaStruct> value) {
    _AppStateDoneTasks = value;
    prefs.setStringList(
        'ff_AppStateDoneTasks', value.map((x) => x.serialize()).toList());
  }

  void addToAppStateDoneTasks(TareaStruct value) {
    AppStateDoneTasks.add(value);
    prefs.setStringList('ff_AppStateDoneTasks',
        _AppStateDoneTasks.map((x) => x.serialize()).toList());
  }

  void removeFromAppStateDoneTasks(TareaStruct value) {
    AppStateDoneTasks.remove(value);
    prefs.setStringList('ff_AppStateDoneTasks',
        _AppStateDoneTasks.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAppStateDoneTasks(int index) {
    AppStateDoneTasks.removeAt(index);
    prefs.setStringList('ff_AppStateDoneTasks',
        _AppStateDoneTasks.map((x) => x.serialize()).toList());
  }

  void updateAppStateDoneTasksAtIndex(
    int index,
    TareaStruct Function(TareaStruct) updateFn,
  ) {
    AppStateDoneTasks[index] = updateFn(_AppStateDoneTasks[index]);
    prefs.setStringList('ff_AppStateDoneTasks',
        _AppStateDoneTasks.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAppStateDoneTasks(int index, TareaStruct value) {
    AppStateDoneTasks.insert(index, value);
    prefs.setStringList('ff_AppStateDoneTasks',
        _AppStateDoneTasks.map((x) => x.serialize()).toList());
  }

  /// La accion de Acuerdos se ha completado, segun el usuario.
  bool _AcuerdosDone = false;
  bool get AcuerdosDone => _AcuerdosDone;
  set AcuerdosDone(bool value) {
    _AcuerdosDone = value;
    prefs.setBool('ff_AcuerdosDone', value);
  }

  /// La accion de Comunicacion Asertiva se ha completado, segun el usuario.
  bool _ComunicacionDone = false;
  bool get ComunicacionDone => _ComunicacionDone;
  set ComunicacionDone(bool value) {
    _ComunicacionDone = value;
    prefs.setBool('ff_ComunicacionDone', value);
  }

  /// La accion de EscuchaActiva se ha completado, segun el usuario.
  bool _EscuchaActivaDone = false;
  bool get EscuchaActivaDone => _EscuchaActivaDone;
  set EscuchaActivaDone(bool value) {
    _EscuchaActivaDone = value;
    prefs.setBool('ff_EscuchaActivaDone', value);
  }

  /// La accion de Lenguaje No Verbal se ha completado, segun el usuario.
  bool _LenguajeDone = false;
  bool get LenguajeDone => _LenguajeDone;
  set LenguajeDone(bool value) {
    _LenguajeDone = value;
    prefs.setBool('ff_LenguajeDone', value);
  }

  /// La accion de Limites se ha completado, segun el usuario.
  bool _LimitesDone = false;
  bool get LimitesDone => _LimitesDone;
  set LimitesDone(bool value) {
    _LimitesDone = value;
    prefs.setBool('ff_LimitesDone', value);
  }

  /// Resultados del formulario contestado por el usuario en Red de Raíces.
  List<ResultadoRedStruct> _red = [];
  List<ResultadoRedStruct> get red => _red;
  set red(List<ResultadoRedStruct> value) {
    _red = value;
  }

  void addToRed(ResultadoRedStruct value) {
    red.add(value);
  }

  void removeFromRed(ResultadoRedStruct value) {
    red.remove(value);
  }

  void removeAtIndexFromRed(int index) {
    red.removeAt(index);
  }

  void updateRedAtIndex(
    int index,
    ResultadoRedStruct Function(ResultadoRedStruct) updateFn,
  ) {
    red[index] = updateFn(_red[index]);
  }

  void insertAtIndexInRed(int index, ResultadoRedStruct value) {
    red.insert(index, value);
  }

  /// User ID
  String _uid = 'test';
  String get uid => _uid;
  set uid(String value) {
    _uid = value;
  }

  /// Usuario activo
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? value) {
    _user = value;
    value != null
        ? prefs.setString('ff_user', value.path)
        : prefs.remove('ff_user');
  }

  /// Resultados del formulario contestado por el usuario en Red de Raíces.
  ResultadoRedStruct _resultadoRedDone = ResultadoRedStruct.fromSerializableMap(
      jsonDecode('{\"escucha\":\"false\"}'));
  ResultadoRedStruct get resultadoRedDone => _resultadoRedDone;
  set resultadoRedDone(ResultadoRedStruct value) {
    _resultadoRedDone = value;
  }

  void updateResultadoRedDoneStruct(Function(ResultadoRedStruct) updateFn) {
    updateFn(_resultadoRedDone);
  }

  DocumentReference? _docDailyNecesidades;
  DocumentReference? get docDailyNecesidades => _docDailyNecesidades;
  set docDailyNecesidades(DocumentReference? value) {
    _docDailyNecesidades = value;
  }

  DocumentReference? _docGlobalDailyNecesidades;
  DocumentReference? get docGlobalDailyNecesidades =>
      _docGlobalDailyNecesidades;
  set docGlobalDailyNecesidades(DocumentReference? value) {
    _docGlobalDailyNecesidades = value;
  }

  DocumentReference? _docEmociones;
  DocumentReference? get docEmociones => _docEmociones;
  set docEmociones(DocumentReference? value) {
    _docEmociones = value;
  }

  DocumentReference? _docGlobalEmociones;
  DocumentReference? get docGlobalEmociones => _docGlobalEmociones;
  set docGlobalEmociones(DocumentReference? value) {
    _docGlobalEmociones = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
