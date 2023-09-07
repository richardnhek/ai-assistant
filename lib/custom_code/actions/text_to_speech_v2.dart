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
import 'package:just_audio/just_audio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../widgets/audio_manager.dart';

Future<void> textToSpeechV2(String? voiceId, String? text) async {
  final String url =
      'https://api.elevenlabs.io/v1/text-to-speech/$voiceId/stream?optimize_streaming_latency=1';

  final Map<String, dynamic> body = {
    'text': text,
    'model_id': 'eleven_multilingual_v1',
    'voice_settings': {
      'stability': 0.25,
      'clarity': 0.5,
      'similarity_boost': 0.5,
    },
  };

  final http.Request request = http.Request('POST', Uri.parse(url))
    ..headers.addAll({
      'Content-Type': 'application/json',
      'xi-api-key': '75682bd1e52dc328dc477937c3752de1',
    })
    ..body = jsonEncode(body);

  final http.StreamedResponse response = await http.Client().send(request);
  await streamToAudio(response.stream);
}

Future<void> streamToAudio(http.ByteStream audioStream) async {
  List<List<int>> chunks = await audioStream.toList();
  List<int> audioBytes = chunks.expand((chunk) => chunk).toList();
  final AudioPlayer _audioPlayer = AudioManager().player;
  await _audioPlayer.setAudioSource(AIAudioSource(audioBytes));
  _audioPlayer.play();
}

class AIAudioSource extends StreamAudioSource {
  final List<int> bytes;
  AIAudioSource(this.bytes);

  @override
  Future<StreamAudioResponse> request([int? start, int? end]) async {
    start ??= 0;
    end ??= bytes.length;
    return StreamAudioResponse(
      sourceLength: bytes.length,
      contentLength: end - start,
      offset: start,
      stream: Stream.value(bytes.sublist(start, end)),
      contentType: 'audio/mpeg',
    );
  }
}
