// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:record/record.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:html' as html;

Future<String> stopAudioRecording() async {
  // Add your function code here!
  // Add your function code here!
  final record = Record();

  // Get the state of the recorder
  bool isRecording = await record.isRecording();

  print('is recording???');
  print(isRecording);

// Stop recording
  var sth = await record.stop();

  print('what got recorded????');
  print(sth);

  http.Response response = await http.get(Uri.parse(sth!));
  Uint8List bytes = Uint8List.fromList(response.bodyBytes);

  print('these are the bytes');
  print(bytes);

  // // return FFUploadedFile(bytes: bytes);

  // html.File file = html.File(Uint8List.fromList(bytes), 'my_file.m4a');
  // html.Blob blob = file.slice();

  // var theFile = await FFUploadedFile(
  //   bytes: bytes,
  // );

  // print('the file');
  // print(theFile.toString());
  // final fileName = 'my_file.jpg';
  // final bytess = theFile.bytes!;
  // final appDocumentsDirectory = await getApplicationDocumentsDirectory();
  // final filePath = '${appDocumentsDirectory.path}/$fileName';
  // final file = File(fieldName);
  // await file.writeAsBytes(bytess);

  final url =
      "https://upluewmihqffmiaosnjn.functions.supabase.co/audio-to-text";
  final request = http.MultipartRequest('POST', Uri.parse(url));
  String fieldName = 'file';
  // String fileName = file.path.split('/').last;
  // request.files
  //     .add(await http.MultipartFile.fromPath(fieldName, filename: fileName));

  request.files.add(
      http.MultipartFile.fromBytes(fieldName, bytes, filename: 'my_file.m4a'));

  final responsee = await request.send();

  // Check the response status code
  // if (responsee.statusCode == 200) {
  //   print(await responsee.stream.bytesToString());
  // } else {
  //   print('Failed to upload file. Status code: ${response.statusCode}');
  // }
  // print(await json.decode(await responsee.stream.bytesToString())['text']);
  // print("pa await");
  // print("prove");
  // print(json.decode(await responsee.stream.bytesToString())['text']);
  // return await json.decode(await responsee.stream.bytesToString())['text'];
  //final text = await responsee.stream.bytesToString();
  //print('$text');
  /* print(text);
  if (text['text'] != null) {
    return text['text'];
  } else {
    print("aaaaaaaaaaaaaa");
    return ("hey");
  }*/
  Stream<List<int>> responseStream = responsee.stream;
  List<int> responseBody = await responseStream.expand((x) => x).toList();
  String responseString = utf8.decode(responseBody);
  Map<String, dynamic> responseJson = jsonDecode(responseString);
  String text = responseJson['text'];

  return text;
}
