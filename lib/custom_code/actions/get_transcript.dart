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

// Defining a function to send the API request
Future<void> getTranscript(
    String? toEmail, String? subject, String? content) async {
  var url = Uri.parse('https://api.sendgrid.com/v3/mail/send');

  var headers = <String, String>{
    'Content-Type': 'application/json',
    'Authorization':
        ' Bearer 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',
    'Access-Control-Allow-Origin': '*'
  };

  var body =
      jsonEncode({'toEmail': toEmail, 'subject': subject, 'content': content});

  var response = await http.post(url, headers: headers, body: body);

  if (response.statusCode == 200) {
    print('API call successful');
  } else {
    print('API call failed with status code: ${response.statusCode}');
  }
}
