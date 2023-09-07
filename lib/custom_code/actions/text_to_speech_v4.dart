// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
import 'package:ford/custom_code/widgets/audio_controller.dart';

Future<void> textToSpeechV4(String voiceId, String text) async {
  final String url =
      "https://fullyai-staging.onrender.com/text-to-speech?voiceId=$voiceId&modelId=eleven_multilingual_v2&optimizationLevel=1&text=${Uri.encodeComponent(text)}";

  AudioController().play(url);
}
