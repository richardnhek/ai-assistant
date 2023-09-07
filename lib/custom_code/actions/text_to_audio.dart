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

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:just_audio/just_audio.dart';

Future<String> textToAudio(String text, String? assistant) async {
  // Defines the url where the post request will be sent
  var url = 'https://upluewmihqffmiaosnjn.functions.supabase.co/text-to-audio';

  // Prepares the data to be sent in the body of the post request
  var body = json.encode({'text': text, 'speakerName': assistant});

  // Sends the post request with the text and assistant in the body
  var response = await http.post(
    Uri.parse(url),
    headers: {"Content-Type": "application/json"},
    body: body,
  );

  // Checks if the post request was successful
  if (response.statusCode == 200) {
    // Instantiates an audio player
    AudioPlayer player = AudioPlayer();

    // Create a temporary URL to use for audio streaming
    String tempUrl =
        Uri.dataFromBytes(response.bodyBytes, mimeType: 'audio/mpeg')
            .toString();

    // Plays the received audio file from the temporary URL
    // await player.setUrl(tempUrl);
    // player.play();

    return tempUrl;
  } else {
    // If the post request was not successful, throws an error
    throw Exception('Failed to convert text to audio');
  }
}
