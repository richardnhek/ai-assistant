import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_page_model.dart';
export 'menu_page_model.dart';

class MenuPageWidget extends StatefulWidget {
  const MenuPageWidget({Key? key}) : super(key: key);

  @override
  _MenuPageWidgetState createState() => _MenuPageWidgetState();
}

class _MenuPageWidgetState extends State<MenuPageWidget> {
  late MenuPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if ((FFAppState().isAllowed == false) ||
          (FFAppState().emailSent == false)) {
        context.goNamed('PasswordCheckPage');
      } else {
        return;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFDBDFF2),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(79.0, 55.0, 79.0, 50.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/images/Group_1597877892.png',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Color(0xFF010614),
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 44.0,
                      icon: Icon(
                        Icons.close_rounded,
                        color: Color(0xFF010614),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.safePop();
                      },
                    ),
                  ],
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: (_model.regionHovered == 1) ||
                                            (_model.regionHovered == null)
                                        ? Color(0xFF010614)
                                        : Color(0xFFC5CBDE),
                                    fontSize: 60.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: (_model.regionHovered == 1) ||
                                      (_model.regionHovered == null)
                                  ? Color(0xFF010614)
                                  : Color(0xFFC5CBDE),
                            ),
                          ],
                        ),
                        onEnter: ((event) async {
                          setState(() => _model.mouseRegionHovered2 = true);
                          setState(() {
                            _model.regionHovered = 1;
                          });
                        }),
                        onExit: ((event) async {
                          setState(() => _model.mouseRegionHovered2 = false);
                        }),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'How it works',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: (_model.regionHovered == 2) ||
                                            (_model.regionHovered == null)
                                        ? Color(0xFF010614)
                                        : Color(0xFFC5CBDE),
                                    fontSize: 60.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: (_model.regionHovered == 2) ||
                                      (_model.regionHovered == null)
                                  ? Color(0xFF010614)
                                  : Color(0xFFC5CBDE),
                            ),
                          ],
                        ),
                        onEnter: ((event) async {
                          setState(() => _model.mouseRegionHovered3 = true);
                          setState(() {
                            _model.regionHovered = 2;
                          });
                        }),
                        onExit: ((event) async {
                          setState(() => _model.mouseRegionHovered3 = false);
                        }),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Start your Pitch',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: (_model.regionHovered == 3) ||
                                            (_model.regionHovered == null)
                                        ? Color(0xFF010614)
                                        : Color(0xFFC5CBDE),
                                    fontSize: 60.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: (_model.regionHovered == 3) ||
                                      (_model.regionHovered == null)
                                  ? Color(0xFF010614)
                                  : Color(0xFFC5CBDE),
                            ),
                          ],
                        ),
                        onEnter: ((event) async {
                          setState(() => _model.mouseRegionHovered4 = true);
                          setState(() {
                            _model.regionHovered = 3;
                          });
                        }),
                        onExit: ((event) async {
                          setState(() => _model.mouseRegionHovered4 = false);
                        }),
                      ),
                    ],
                  ),
                  onEnter: ((event) async {
                    setState(() => _model.mouseRegionHovered1 = true);
                  }),
                  onExit: ((event) async {
                    setState(() => _model.mouseRegionHovered1 = false);
                    setState(() {
                      _model.regionHovered = null;
                    });
                  }),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          '@info.pitchyouridea.com',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF010614),
                                    fontSize: 25.0,
                                  ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 47.0, 0.0, 24.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebookF,
                            color: Color(0xFF010614),
                            size: 24.0,
                          ),
                          FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Color(0xFF010614),
                            size: 24.0,
                          ),
                          FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Color(0xFF010614),
                            size: 24.0,
                          ),
                          FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Color(0xFF010614),
                            size: 24.0,
                          ),
                        ].divide(SizedBox(width: 80.0)),
                      ),
                    ),
                    Divider(
                      height: 1.0,
                      thickness: 1.0,
                      color: Color(0xFF010614),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Privacy Policy',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF010614),
                            decoration: TextDecoration.underline,
                          ),
                    ),
                    Text(
                      'Terms of Use',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF010614),
                            decoration: TextDecoration.underline,
                          ),
                    ),
                    Text(
                      'Cookies Settings',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF010614),
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
