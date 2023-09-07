import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/message/message_widget.dart';
import '/components/message_mobile/message_mobile_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class DialogModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<DialogContentStruct> dialogList = [];
  void addToDialogList(DialogContentStruct item) => dialogList.add(item);
  void removeFromDialogList(DialogContentStruct item) =>
      dialogList.remove(item);
  void removeAtIndexFromDialogList(int index) => dialogList.removeAt(index);
  void updateDialogListAtIndex(
          int index, Function(DialogContentStruct) updateFn) =>
      dialogList[index] = updateFn(dialogList[index]);

  List<dynamic> chatHistory = [];
  void addToChatHistory(dynamic item) => chatHistory.add(item);
  void removeFromChatHistory(dynamic item) => chatHistory.remove(item);
  void removeAtIndexFromChatHistory(int index) => chatHistory.removeAt(index);
  void updateChatHistoryAtIndex(int index, Function(dynamic) updateFn) =>
      chatHistory[index] = updateFn(chatHistory[index]);

  int? buttons = 0;

  String status = 'hearing';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  AudioPlayer? soundPlayer3;
  AudioPlayer? soundPlayer4;
  AudioPlayer? soundPlayer5;
  AudioPlayer? soundPlayer6;
  // Stores action output result for [Custom Action - stopAudioRecording] action in Button widget.
  String? record;
  // Stores action output result for [Backend Call - API (ChatGPT Completion)] action in Button widget.
  ApiCallResponse? chatGPTResponse;
  // Stores action output result for [Custom Action - textToAudio] action in Button widget.
  String? assistantAudio;
  AudioPlayer? soundPlayer7;
  // State field(s) for ColumnDesktop widget.
  ScrollController? columnDesktop;
  // State field(s) for Timer widget.
  int timerMilliseconds = 180000;
  String timerValue = StopWatchTimer.getDisplayTime(
    180000,
    hours: false,
    milliSecond: false,
  );
  StopWatchTimer timerController =
      StopWatchTimer(mode: StopWatchMode.countDown);

  // State field(s) for ColumnMobile widget.
  ScrollController? columnMobile;
  // Stores action output result for [Custom Action - stopAudioRecording] action in Button widget.
  String? recordMobile;
  // Stores action output result for [Backend Call - API (ChatGPT Completion)] action in Button widget.
  ApiCallResponse? chatGPTResponseMobile;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    columnDesktop = ScrollController();
    columnMobile = ScrollController();
  }

  void dispose() {
    unfocusNode.dispose();
    columnDesktop?.dispose();
    timerController.dispose();
    columnMobile?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
