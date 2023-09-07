// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Imports other custom actions

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

import 'package:just_audio/just_audio.dart';
import 'dart:html' as html;

Future<void> textToSpeechV3(String voiceId, String text) async {
  final stopwatch = Stopwatch()..start(); // Start the stopwatch

  final audio = html.AudioElement(
    "https://fullyai-staging.onrender.com/text-to-speech?voiceId=$voiceId&modelId=eleven_multilingual_v2&optimizationLevel=1&text=${Uri.encodeComponent(text)}",
  );

  audio.onCanPlay.listen((event) async {
    print('Time before audio.play: ${stopwatch.elapsedMilliseconds} ms');
    await audio.play();
    print('audio.play done: ${stopwatch.elapsedMilliseconds} ms');
  });

  audio.onEnded.listen((event) {
    print('end: ${stopwatch.elapsedMilliseconds} ms');
    stopwatch.stop();
  });
}
