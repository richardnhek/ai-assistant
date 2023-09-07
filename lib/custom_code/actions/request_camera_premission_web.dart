// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:html' as html;
import 'package:flutter/foundation.dart';

Future requestCameraPremissionWeb() async {
  // request camera access on web
// Check if the current platform is web
  try {
    html.MediaStream stream =
        await html.window.navigator.mediaDevices!.getUserMedia({'video': true});
    // Camera permission granted, do something with the stream if needed
  } catch (e) {
    // Camera permission denied or an error occurred
    print('Camera Permission Error: $e');
  }
}
