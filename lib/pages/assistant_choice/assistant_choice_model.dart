import '/backend/schema/structs/index.dart';
import '/components/assistant/assistant_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AssistantChoiceModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int? selectedOption;

  bool? selected = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // Model for Assistant component.
  late AssistantModel assistantModel1;
  // Model for Assistant component.
  late AssistantModel assistantModel2;
  // Model for Assistant component.
  late AssistantModel assistantModel3;
  // Model for Assistant component.
  late AssistantModel assistantModel4;
  // Model for Assistant component.
  late AssistantModel assistantModel5;
  // Model for Assistant component.
  late AssistantModel assistantModel6;
  // Model for Assistant component.
  late AssistantModel assistantModel7;
  // Model for Assistant component.
  late AssistantModel assistantModel8;
  // Model for Assistant component.
  late AssistantModel assistantModel9;
  // Model for Assistant component.
  late AssistantModel assistantModel10;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
    assistantModel1 = createModel(context, () => AssistantModel());
    assistantModel2 = createModel(context, () => AssistantModel());
    assistantModel3 = createModel(context, () => AssistantModel());
    assistantModel4 = createModel(context, () => AssistantModel());
    assistantModel5 = createModel(context, () => AssistantModel());
    assistantModel6 = createModel(context, () => AssistantModel());
    assistantModel7 = createModel(context, () => AssistantModel());
    assistantModel8 = createModel(context, () => AssistantModel());
    assistantModel9 = createModel(context, () => AssistantModel());
    assistantModel10 = createModel(context, () => AssistantModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navBarModel.dispose();
    assistantModel1.dispose();
    assistantModel2.dispose();
    assistantModel3.dispose();
    assistantModel4.dispose();
    assistantModel5.dispose();
    assistantModel6.dispose();
    assistantModel7.dispose();
    assistantModel8.dispose();
    assistantModel9.dispose();
    assistantModel10.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
