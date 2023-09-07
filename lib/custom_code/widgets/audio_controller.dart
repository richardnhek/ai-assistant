// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
import 'dart:html' as html;
import 'dart:js' as js;

class AudioController {
  html.AudioElement? audio;

  static final AudioController _instance = AudioController._internal();
  factory AudioController() => _instance;
  AudioController._internal();

  Future<void> play(String url) async {
    audio = html.AudioElement(url);
    FFAppState().update(() {
      FFAppState().audioStreamFinished = false;
    });
    audio!.onEnded.listen((event) {
      FFAppState().update(() {
        FFAppState().audioStreamFinished = true;
        FFAppState().dialogButton = 0;
      });
    });
    await audio!.play();
  }

  // Future<void> playJS(String url) async {
  //   final audio = js.JsObject(js.context['Audio'], [url]);
  //   audio.callMethod('play');
  // }

  void stop() {
    if (audio != null) {
      audio!.pause();
      audio!.currentTime = 0.0;
      FFAppState().update(() {
        FFAppState().audioStreamFinished = true;
        FFAppState().dialogButton = 0;
      });
    }
  }
}
