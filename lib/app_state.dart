import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _isAllowed = await secureStorage.getBool('ff_isAllowed') ?? _isAllowed;
    });
    await _safeInitAsync(() async {
      _emailSent = await secureStorage.getBool('ff_emailSent') ?? _emailSent;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  int _assistantSelected = 0;
  int get assistantSelected => _assistantSelected;
  set assistantSelected(int _value) {
    _assistantSelected = _value;
  }

  List<dynamic> _conversation = [
    jsonDecode(
        '[{\"question\":\"What is the unique selling proposition of your football team?\",\"answer\":\"by competing in different competitions.\",\"audioUrl\":\"blob:https://app.pitchyouridea.ai/1dab4a28-551f-449d-93b8-477b2b45b16a\"},{\"question\":\"How do you plan to attract talented players to join your team?\",\"answer\":\"by creating a warm environment, welcoming one and also promoting young talents.\",\"audioUrl\":\"blob:https://app.pitchyouridea.ai/316ea5e1-6020-44c8-ae33-423d5296843e\"},{\"question\":\"What strategies do you have in place to ensure a strong team spirit and cohesive gameplay?\",\"answer\":\"I don\'t know that yet.\",\"audioUrl\":\"blob:https://app.pitchyouridea.ai/752ee65d-7c47-4cc5-b2d9-5802cddf058e\"},{\"question\":\"Have you conducted any market research to understand the demand for a new football team in the area?\",\"answer\":\"No, to be honest, not yet.\",\"audioUrl\":\"blob:https://app.pitchyouridea.ai/aa3af897-dee9-4f3a-a612-435264199079\"}]')
  ];
  List<dynamic> get conversation => _conversation;
  set conversation(List<dynamic> _value) {
    _conversation = _value;
  }

  void addToConversation(dynamic _value) {
    _conversation.add(_value);
  }

  void removeFromConversation(dynamic _value) {
    _conversation.remove(_value);
  }

  void removeAtIndexFromConversation(int _index) {
    _conversation.removeAt(_index);
  }

  void updateConversationAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _conversation[_index] = updateFn(_conversation[_index]);
  }

  String _AssitantInstruction = '';
  String get AssitantInstruction => _AssitantInstruction;
  set AssitantInstruction(String _value) {
    _AssitantInstruction = _value;
  }

  String _textToAudioTempUrl = '';
  String get textToAudioTempUrl => _textToAudioTempUrl;
  set textToAudioTempUrl(String _value) {
    _textToAudioTempUrl = _value;
  }

  bool _isAllowed = false;
  bool get isAllowed => _isAllowed;
  set isAllowed(bool _value) {
    _isAllowed = _value;
    secureStorage.setBool('ff_isAllowed', _value);
  }

  void deleteIsAllowed() {
    secureStorage.delete(key: 'ff_isAllowed');
  }

  bool _emailSent = false;
  bool get emailSent => _emailSent;
  set emailSent(bool _value) {
    _emailSent = _value;
    secureStorage.setBool('ff_emailSent', _value);
  }

  void deleteEmailSent() {
    secureStorage.delete(key: 'ff_emailSent');
  }

  bool _audioStreamFinished = true;
  bool get audioStreamFinished => _audioStreamFinished;
  set audioStreamFinished(bool _value) {
    _audioStreamFinished = _value;
  }

  bool _showClickToSpeak = true;
  bool get showClickToSpeak => _showClickToSpeak;
  set showClickToSpeak(bool _value) {
    _showClickToSpeak = _value;
  }

  int _dialogButton = 0;
  int get dialogButton => _dialogButton;
  set dialogButton(int _value) {
    _dialogButton = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
