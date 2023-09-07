import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

dynamic convertToJSON(
  String prompt,
  String role,
) {
  Map<String, dynamic> jsonData = {
    'role': role,
    'content': prompt,
  };

  return jsonData;
}

String jsonListToString(List<dynamic> jsonList) {
  // return a string from a json list
  List<String> stringList = jsonList.map((item) => item.toString()).toList();
  return stringList.join(', ');
}
