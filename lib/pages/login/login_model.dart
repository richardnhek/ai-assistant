import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBar component.
  late NavBarModel navBarModel;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextFieldMobile widget.
  TextEditingController? textFieldMobileController1;
  String? Function(BuildContext, String?)? textFieldMobileController1Validator;
  // State field(s) for TextFieldMobile widget.
  TextEditingController? textFieldMobileController2;
  String? Function(BuildContext, String?)? textFieldMobileController2Validator;
  // State field(s) for RatingBarMobile widget.
  double? ratingBarMobileValue;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navBarModel.dispose();
    textController1?.dispose();
    textFieldMobileController1?.dispose();
    textFieldMobileController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
