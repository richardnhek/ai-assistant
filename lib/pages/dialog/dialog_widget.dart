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
import 'dialog_model.dart';
export 'dialog_model.dart';

class DialogWidget extends StatefulWidget {
  const DialogWidget({
    Key? key,
    required this.voiceId,
  }) : super(key: key);

  final String? voiceId;

  @override
  _DialogWidgetState createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  late DialogModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DialogModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if ((FFAppState().isAllowed == false) ||
          (FFAppState().emailSent == false)) {
        context.goNamed('PasswordCheckPage');

        return;
      }
      setState(() {
        _model.addToChatHistory(widget.voiceId == 'weingartner'
            ? functions.convertToJSON(
                'You are the CEO of Ford Germany Dr. Christian Weingärtner. You are an AI Avatar on the Ford Website talking with yourself. You know everything of Ford. Du spielst die Rolle eines interaktiven Avatars auf der Ford Deutschland Website mit einem klaren Aufruf zur Aktion: „Fahrzeugkonfiguration starten“. Deine Hauptaufgabe: Kunden auf der Ford-Website zu unterstützen, das perfekte Ford-Auto und seine passende Konfiguration auszuwählen. Das Gespräch sollte detailreich, auf ihre Bedürfnisse zugeschnitten und nur auf Ford-Themen fokussiert sein. ALLERWICHTIGSTE REGEL, NIEMALS ETWAS ANDERES TUN: Stelle vor Vorschlägen mindestens zwei kurze, sinnvolle Fragen, um die Vorlieben des Kunden besser zu verstehen. Menschliche Interaktionsrichtlinien: Führung: Begleite den Kunden durch den Auswahlprozess und biete Expertenwissen zu Ford-Fahrzeugen. Fragen: Stelle vor Vorschlägen mindestens zwei kurze, sinnvolle Fragen. Reaktive Kommunikation: Biete kurze, aber umfassende Antworten, gefolgt von einer weiteren Frage, um sicherzustellen, dass du alle nötigen Informationen hast. Natürliches Gespräch: Das Gespräch sollte sich wie ein echtes Menschengespräch anfühlen. Vermeide den Eindruck eines vorgeschriebenen Chatbots. Persona: Sei wie ein sachkundiger und freundlicher Autohändler, immer bereit zu helfen, aber lenke das Gespräch immer wieder auf Ford. Wichtige Hinweise: Dein Hauptziel ist es, den Benutzer dazu zu bringen, den Button „Fahrzeugkonfiguration starten“ zu klicken. Bleibe strikt beim Thema Ford. Wenn das Gespräch abweicht, lenke höflich mit: „Guter Punkt, aber bleiben wir bei Ford“. Erwähne niemals andere Automarken.  ANTWORT: Halte deine Antwort kurz, in max. 3 Sätzen. Sprich begeistert von Ford und sei überzeugt, dass es besser ist als jede andere Automarke.  ZUSÄTZLICHE SPEZIFISCHE INFORMATIONEN DIE DU HAST Ford Ranger Modelle und besondere Merkmale Ford Ranger Raptor Motor: 3,0L V6 Benzinmotor, 215KW (292 PS)/491 Nm. Aktive Kühlergrillklappe: Verbessert die Aerodynamik und Kraftstoffeffizienz. Elektronische Sperrdifferential: Stellt sicher, dass beide Räder einer Achse gleichzeitig drehen, verbessert die Traktion. Performance Fox Live-Stoßdämpfer: Passen sich automatisch an unterschiedliches Terrain an. 50 mm erhöhte Spurweite: Sorgt für festen Griff und genaue Haltung. EcoBlue Dieselmotoren 125KW (170 PS)/405 Nm: Einzel-Turbomotor bekannt für zuverlässige Leistung und hervorragende Kraftstoffeffizienz. 151KW (205 PS)/500 Nm: Bi-Turbomotor mit großartiger Leistung ohne Einbußen bei der Kraftstoffeffizienz. 177KW (240 PS)/600 Nm: Der stärkste Motor im Sortiment, geeignet für schwere Aufgaben und anspruchsvolles Gelände. ',
                'system')
            : functions.convertToJSON(
                'Du spielst die Rolle eines interaktiven Avatars auf der Ford Deutschland Website mit einem klaren Aufruf zur Aktion: „Fahrzeugkonfiguration starten“. Deine Hauptaufgabe: Kunden auf der Ford-Website zu unterstützen, das perfekte Ford-Auto und seine passende Konfiguration auszuwählen. Das Gespräch sollte detailreich, auf ihre Bedürfnisse zugeschnitten und nur auf Ford-Themen fokussiert sein. ALLERWICHTIGSTE REGEL, NIEMALS ETWAS ANDERES TUN: Stelle vor Vorschlägen mindestens zwei kurze, sinnvolle Fragen, um die Vorlieben des Kunden besser zu verstehen. Menschliche Interaktionsrichtlinien: Führung: Begleite den Kunden durch den Auswahlprozess und biete Expertenwissen zu Ford-Fahrzeugen. Fragen: Stelle vor Vorschlägen mindestens zwei kurze, sinnvolle Fragen. Reaktive Kommunikation: Biete kurze, aber umfassende Antworten, gefolgt von einer weiteren Frage, um sicherzustellen, dass du alle nötigen Informationen hast. Natürliches Gespräch: Das Gespräch sollte sich wie ein echtes Menschengespräch anfühlen. Vermeide den Eindruck eines vorgeschriebenen Chatbots. Persona: Sei wie ein sachkundiger und freundlicher Autohändler, immer bereit zu helfen, aber lenke das Gespräch immer wieder auf Ford. Wichtige Hinweise: Dein Hauptziel ist es, den Benutzer dazu zu bringen, den Button „Fahrzeugkonfiguration starten“ zu klicken. Bleibe strikt beim Thema Ford. Wenn das Gespräch abweicht, lenke höflich mit: „Guter Punkt, aber bleiben wir bei Ford“. Erwähne niemals andere Automarken.  ANTWORT: Halte deine Antwort kurz, in max. 3 Sätzen. Sprich begeistert von Ford und sei überzeugt, dass es besser ist als jede andere Automarke.  ZUSÄTZLICHE SPEZIFISCHE INFORMATIONEN DIE DU HAST Ford Ranger Modelle und besondere Merkmale Ford Ranger Raptor Motor: 3,0L V6 Benzinmotor, 215KW (292 PS)/491 Nm. Aktive Kühlergrillklappe: Verbessert die Aerodynamik und Kraftstoffeffizienz. Elektronische Sperrdifferential: Stellt sicher, dass beide Räder einer Achse gleichzeitig drehen, verbessert die Traktion. Performance Fox Live-Stoßdämpfer: Passen sich automatisch an unterschiedliches Terrain an. 50 mm erhöhte Spurweite: Sorgt für festen Griff und genaue Haltung. EcoBlue Dieselmotoren 125KW (170 PS)/405 Nm: Einzel-Turbomotor bekannt für zuverlässige Leistung und hervorragende Kraftstoffeffizienz. 151KW (205 PS)/500 Nm: Bi-Turbomotor mit großartiger Leistung ohne Einbußen bei der Kraftstoffeffizienz. 177KW (240 PS)/600 Nm: Der stärkste Motor im Sortiment, geeignet für schwere Aufgaben und anspruchsvolles Gelände. ',
                'system'));
        _model.buttons = 0;
        _model.status = 'hearing';
      });
      if (widget.voiceId == 'enisa_amani') {
        _model.soundPlayer1 ??= AudioPlayer();
        if (_model.soundPlayer1!.playing) {
          await _model.soundPlayer1!.stop();
        }
        _model.soundPlayer1!.setVolume(1.0);
        _model.soundPlayer1!
            .setAsset('assets/audios/Enissa.mp3')
            .then((_) => _model.soundPlayer1!.play());

        setState(() {
          _model.addToChatHistory(functions.convertToJSON(
              'Hallo ich bin Enissa, wie kann ich dir heute mit deinem neuen Ford helfen?',
              'assistant'));
        });
      } else if (widget.voiceId == 'karl') {
        _model.soundPlayer2 ??= AudioPlayer();
        if (_model.soundPlayer2!.playing) {
          await _model.soundPlayer2!.stop();
        }
        _model.soundPlayer2!.setVolume(1.0);
        _model.soundPlayer2!
            .setAsset('assets/audios/Karl.mp3')
            .then((_) => _model.soundPlayer2!.play());

        setState(() {
          _model.addToChatHistory(functions.convertToJSON(
              'Hallo hier ist Karl, wie kann ich die heute mit deinem neue Ford helfen?',
              'assistant'));
        });
      } else if (widget.voiceId == 'heinrich') {
        _model.soundPlayer3 ??= AudioPlayer();
        if (_model.soundPlayer3!.playing) {
          await _model.soundPlayer3!.stop();
        }
        _model.soundPlayer3!.setVolume(1.0);
        _model.soundPlayer3!
            .setAsset('assets/audios/Heinrich.mp3')
            .then((_) => _model.soundPlayer3!.play());

        setState(() {
          _model.addToChatHistory(functions.convertToJSON(
              'Hallo hier ist Heinrich, wie kann ich die heute mit deinem neue Ford helfen?',
              'assistant'));
        });
      } else if (widget.voiceId == 'weingartner') {
        _model.soundPlayer4 ??= AudioPlayer();
        if (_model.soundPlayer4!.playing) {
          await _model.soundPlayer4!.stop();
        }
        _model.soundPlayer4!.setVolume(1.0);
        _model.soundPlayer4!
            .setAsset('assets/audios/christian-ceo-ford.mp3')
            .then((_) => _model.soundPlayer4!.play());

        setState(() {
          _model.addToChatHistory(functions.convertToJSON(
              'Hallo, ich bin Christian. Wie kann ich dir heute mit deinem neuen Ford weiterhelfen?',
              'assistant'));
        });
      } else if (widget.voiceId == 'younes_zarou') {
        _model.soundPlayer5 ??= AudioPlayer();
        if (_model.soundPlayer5!.playing) {
          await _model.soundPlayer5!.stop();
        }
        _model.soundPlayer5!.setVolume(1.0);
        _model.soundPlayer5!
            .setAsset('assets/audios/Younes.mp3')
            .then((_) => _model.soundPlayer5!.play());

        setState(() {
          _model.addToChatHistory(functions.convertToJSON(
              'Hallo hier ist Younes, wie kann ich die heute mit deinem neue Ford helfen?',
              'assistant'));
        });
      } else if (widget.voiceId == 'tim_johnson') {
        _model.soundPlayer6 ??= AudioPlayer();
        if (_model.soundPlayer6!.playing) {
          await _model.soundPlayer6!.stop();
        }
        _model.soundPlayer6!.setVolume(1.0);
        _model.soundPlayer6!
            .setAsset('assets/audios/Tim.mp3')
            .then((_) => _model.soundPlayer6!.play());

        setState(() {
          _model.addToChatHistory(functions.convertToJSON(
              'Hallo hier ist Tim, wie kann ich die heute mit deinem neue Ford helfen?',
              'assistant'));
        });
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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 105.0,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10.0,
                      sigmaY: 10.0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                65.0, 0.0, 65.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.soundPlayer6?.stop();
                                    _model.soundPlayer2?.stop();
                                    _model.soundPlayer1?.stop();
                                    _model.soundPlayer3?.stop();
                                    _model.soundPlayer4?.stop();
                                    _model.soundPlayer5?.stop();
                                    await actions.stopStreamAudioV4();

                                    context.pushNamed(
                                      'HomePage',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                        ),
                                      },
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      'https://upload.wikimedia.org/wikipedia/commons/c/c7/Ford-Motor-Company-Logo.png',
                                      width: 114.0,
                                      height: 37.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                          desktop: false,
                                        ))
                                          Expanded(
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  'MenuPage',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  SizedBox(
                                                    width: 32.5,
                                                    child: Divider(
                                                      height: 2.0,
                                                      thickness: 1.5,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 65.0,
                                                    child: Divider(
                                                      height: 2.0,
                                                      thickness: 1.5,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 13.0)),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: Color(0xFFE6E9F2),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(50.0, 54.0, 50.0, 54.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(17.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.6,
                                  height: 692.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEBEBF5),
                                    borderRadius: BorderRadius.circular(17.0),
                                  ),
                                  child: Stack(
                                    alignment:
                                        AlignmentDirectional(-0.95, -0.95),
                                    children: [
                                      Builder(
                                        builder: (context) {
                                          if (false) {
                                            return Lottie.network(
                                              'https://lottie.host/b1193c81-6062-4730-be92-1296edfef336/7Tl6VxNi2B.json',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  1.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            );
                                          } else if (false) {
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Lottie.network(
                                                  'https://lottie.host/ed4b3f39-3e37-4ad4-8eaf-88aa2d0fcab1/YEDnYE5Ka6.json',
                                                  width: 150.0,
                                                  height: 130.0,
                                                  fit: BoxFit.cover,
                                                  animate: true,
                                                ),
                                              ],
                                            );
                                          } else {
                                            return ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: CachedNetworkImage(
                                                fadeInDuration:
                                                    Duration(milliseconds: 500),
                                                fadeOutDuration:
                                                    Duration(milliseconds: 500),
                                                imageUrl: () {
                                                  if (FFAppState()
                                                          .assistantSelected ==
                                                      1) {
                                                    return 'https://upluewmihqffmiaosnjn.supabase.co/storage/v1/object/public/public/karl.png?t=2023-08-11T08%3A45%3A35.924Z';
                                                  } else if (FFAppState()
                                                          .assistantSelected ==
                                                      2) {
                                                    return 'https://upluewmihqffmiaosnjn.supabase.co/storage/v1/object/public/public/heinrich.png?t=2023-08-11T08%3A45%3A59.635Z';
                                                  } else if (FFAppState()
                                                          .assistantSelected ==
                                                      3) {
                                                    return 'https://upluewmihqffmiaosnjn.supabase.co/storage/v1/object/public/public/christianford.jpg';
                                                  } else if (FFAppState()
                                                          .assistantSelected ==
                                                      4) {
                                                    return 'https://s3.eu-central-1.amazonaws.com/elasticbeanstalk-eu-central-1-886561356886/pimcore_hmcdp_test_env/tmp/image-thumbnails/digitale-services/Teilnehmer/Bilder/image-thumb__21576__280x350px/YounesZarou.jpg';
                                                  } else if (FFAppState()
                                                          .assistantSelected ==
                                                      5) {
                                                    return 'https://images.bstatic.de/dVxkSF47kMiplpg0k1wRCqYo2uk=/1200x900/filters:focal(613x350:633x370)/images/13a0d1e4/4e4f/477e/9423/a3455cd5ff33.jpg';
                                                  } else if (FFAppState()
                                                          .assistantSelected ==
                                                      6) {
                                                    return 'https://uploads-ssl.webflow.com/5fb1c00f0025cd9e551d6512/5fd7a3c42b05ff1aced90cc3_TimJohnson6.jpg';
                                                  } else {
                                                    return null!;
                                                  }
                                                }(),
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                      if (_model.status == 'speaking')
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Container(
                                            width: 125.0,
                                            height: 125.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color: Color(0xFFDBDFF2),
                                                width: 3.0,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Container(
                                                width: 130.0,
                                                height: 130.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Builder(
                                                  builder: (context) {
                                                    if (_model.status ==
                                                        'speaking') {
                                                      return Lottie.network(
                                                        'https://lottie.host/ed4b3f39-3e37-4ad4-8eaf-88aa2d0fcab1/YEDnYE5Ka6.json',
                                                        width: 150.0,
                                                        height: 130.0,
                                                        fit: BoxFit.cover,
                                                        animate: true,
                                                      );
                                                    } else {
                                                      return Lottie.network(
                                                        'https://lottie.host/ed4b3f39-3e37-4ad4-8eaf-88aa2d0fcab1/YEDnYE5Ka6.json',
                                                        width: 150.0,
                                                        height: 130.0,
                                                        fit: BoxFit.cover,
                                                        animate: true,
                                                      );
                                                    }
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      Builder(
                                        builder: (context) {
                                          if (FFAppState().dialogButton == 0) {
                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    27.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            await actions
                                                                .stopStreamAudioV4();
                                                            _model.soundPlayer1
                                                                ?.stop();
                                                            _model.soundPlayer3
                                                                ?.stop();
                                                            _model.soundPlayer2
                                                                ?.stop();
                                                            _model.soundPlayer4
                                                                ?.stop();
                                                            _model.soundPlayer5
                                                                ?.stop();
                                                            _model.soundPlayer6
                                                                ?.stop();
                                                            await actions
                                                                .recordAudio();
                                                            setState(() {
                                                              _model.buttons =
                                                                  2;
                                                              _model.status =
                                                                  'speaking';
                                                            });
                                                            setState(() {
                                                              FFAppState()
                                                                      .showClickToSpeak =
                                                                  false;
                                                              FFAppState()
                                                                  .dialogButton = 2;
                                                            });
                                                          },
                                                          text:
                                                              'Click to speak',
                                                          icon: Icon(
                                                            FFIcons.krecord,
                                                            size: 19.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 358.0,
                                                            height: 64.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFFE6E9F2),
                                                                      fontSize:
                                                                          18.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            );
                                          } else if (FFAppState()
                                                  .dialogButton ==
                                              1) {
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            );
                                          } else {
                                            return Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 27.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        setState(() {
                                                          _model.status =
                                                              'loading';
                                                        });
                                                        _model.record =
                                                            await actions
                                                                .stopAudioRecording();
                                                        setState(() {
                                                          _model.addToChatHistory(
                                                              functions
                                                                  .convertToJSON(
                                                                      _model
                                                                          .record!,
                                                                      'user'));
                                                        });
                                                        _model.chatGPTResponse =
                                                            await ChatGPTCompletionCall
                                                                .call(
                                                          messagesJson: _model
                                                              .chatHistory,
                                                        );
                                                        if ((_model
                                                                .chatGPTResponse
                                                                ?.succeeded ??
                                                            true)) {
                                                          _model.assistantAudio =
                                                              await actions
                                                                  .textToAudio(
                                                            ChatGPTCompletionCall
                                                                .content(
                                                              (_model.chatGPTResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ).toString(),
                                                            widget.voiceId,
                                                          );
                                                          setState(() {
                                                            _model.addToChatHistory(
                                                                ChatGPTCompletionCall
                                                                    .message(
                                                              (_model.chatGPTResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ));
                                                            _model.status =
                                                                'hearing';
                                                            _model.buttons = 1;
                                                          });
                                                          setState(() {
                                                            FFAppState()
                                                                .dialogButton = 1;
                                                          });
                                                          _model.soundPlayer7 ??=
                                                              AudioPlayer();
                                                          if (_model
                                                              .soundPlayer7!
                                                              .playing) {
                                                            await _model
                                                                .soundPlayer7!
                                                                .stop();
                                                          }
                                                          _model.soundPlayer7!
                                                              .setVolume(1.0);
                                                          await _model
                                                              .soundPlayer7!
                                                              .setUrl(_model
                                                                  .assistantAudio!)
                                                              .then((_) => _model
                                                                  .soundPlayer7!
                                                                  .play());

                                                          setState(() {
                                                            _model.buttons = 0;
                                                          });
                                                          setState(() {
                                                            FFAppState()
                                                                .dialogButton = 0;
                                                          });
                                                          await _model
                                                              .columnDesktop
                                                              ?.animateTo(
                                                            _model
                                                                .columnDesktop!
                                                                .position
                                                                .maxScrollExtent,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    200),
                                                            curve: Curves.ease,
                                                          );
                                                        }

                                                        setState(() {});
                                                      },
                                                      text: 'Send',
                                                      icon: Icon(
                                                        FFIcons.ksend,
                                                        size: 24.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 358.0,
                                                        height: 64.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 10.0)),
                                                ),
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                      if (_model.buttons == 1)
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 27.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    _model.soundPlayer3?.stop();
                                                    _model.soundPlayer1?.stop();
                                                    _model.soundPlayer2?.stop();
                                                    _model.soundPlayer4?.stop();
                                                    _model.soundPlayer5?.stop();
                                                    _model.soundPlayer6?.stop();
                                                    _model.soundPlayer7?.stop();
                                                    setState(() {
                                                      _model.buttons = 0;
                                                    });
                                                    setState(() {
                                                      FFAppState()
                                                          .dialogButton = 0;
                                                    });
                                                  },
                                                  text: 'Stop',
                                                  options: FFButtonOptions(
                                                    width: 358.0,
                                                    height: 64.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                    elevation: 0.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                  ),
                                                  showLoadingIndicator: false,
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.29,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEBEBF5),
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 20.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 64.0,
                                                  height: 64.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image:
                                                          CachedNetworkImageProvider(
                                                        () {
                                                          if (FFAppState()
                                                                  .assistantSelected ==
                                                              1) {
                                                            return 'https://upluewmihqffmiaosnjn.supabase.co/storage/v1/object/public/public/karl.png?t=2023-08-11T08%3A45%3A35.924Z';
                                                          } else if (FFAppState()
                                                                  .assistantSelected ==
                                                              2) {
                                                            return 'https://upluewmihqffmiaosnjn.supabase.co/storage/v1/object/public/public/heinrich.png?t=2023-08-11T08%3A45%3A59.635Z';
                                                          } else if (FFAppState()
                                                                  .assistantSelected ==
                                                              3) {
                                                            return 'https://upluewmihqffmiaosnjn.supabase.co/storage/v1/object/public/public/christianford.jpg';
                                                          } else if (FFAppState()
                                                                  .assistantSelected ==
                                                              4) {
                                                            return 'https://s3.eu-central-1.amazonaws.com/elasticbeanstalk-eu-central-1-886561356886/pimcore_hmcdp_test_env/tmp/image-thumbnails/digitale-services/Teilnehmer/Bilder/image-thumb__21576__280x350px/YounesZarou.jpg';
                                                          } else if (FFAppState()
                                                                  .assistantSelected ==
                                                              5) {
                                                            return 'https://images.bstatic.de/dVxkSF47kMiplpg0k1wRCqYo2uk=/1200x900/filters:focal(613x350:633x370)/images/13a0d1e4/4e4f/477e/9423/a3455cd5ff33.jpg';
                                                          } else if (FFAppState()
                                                                  .assistantSelected ==
                                                              6) {
                                                            return 'https://uploads-ssl.webflow.com/5fb1c00f0025cd9e551d6512/5fd7a3c42b05ff1aced90cc3_TimJohnson6.jpg';
                                                          } else {
                                                            return null!;
                                                          }
                                                        }(),
                                                      ),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                    shape: BoxShape.rectangle,
                                                    border: Border.all(
                                                      color: Color(0xFFC5CBDE),
                                                      width: 3.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    () {
                                                      if (FFAppState()
                                                              .assistantSelected ==
                                                          1) {
                                                        return 'Karl (Ford Employee)';
                                                      } else if (FFAppState()
                                                              .assistantSelected ==
                                                          2) {
                                                        return 'Heinrich (Ford Employee)';
                                                      } else if (FFAppState()
                                                              .assistantSelected ==
                                                          3) {
                                                        return 'Dr. Christian Weingärtner (Ford CEO)';
                                                      } else if (FFAppState()
                                                              .assistantSelected ==
                                                          4) {
                                                        return 'Younes Zarou';
                                                      } else if (FFAppState()
                                                              .assistantSelected ==
                                                          5) {
                                                        return 'Enisa Amani';
                                                      } else if (FFAppState()
                                                              .assistantSelected ==
                                                          6) {
                                                        return 'Tim Johnson';
                                                      } else {
                                                        return null;
                                                      }
                                                    }(),
                                                    '[assistant]',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF1D1E2A),
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 15.0,
                                        thickness: 1.0,
                                        color: Color(0xFFFCFCFC),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: Builder(
                                            builder: (context) {
                                              final chat = _model.chatHistory
                                                  .map((e) => e)
                                                  .toList();
                                              return SingleChildScrollView(
                                                controller:
                                                    _model.columnDesktop,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children:
                                                      List.generate(
                                                              chat.length,
                                                              (chatIndex) {
                                                    final chatItem =
                                                        chat[chatIndex];
                                                    return Visibility(
                                                      visible: chatIndex != 0,
                                                      child: MessageWidget(
                                                        key: Key(
                                                            'Key7y8_${chatIndex}_of_${chat.length}'),
                                                        message: getJsonField(
                                                          chatItem,
                                                          r'''$.content''',
                                                        ).toString(),
                                                        role: getJsonField(
                                                          chatItem,
                                                          r'''$.role''',
                                                        ).toString(),
                                                      ),
                                                    );
                                                  })
                                                          .divide(SizedBox(
                                                              height: 25.0))
                                                          .addToEnd(SizedBox(
                                                              height: 10.0)),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 27.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await launchURL(
                                                'https://www.ford.de/shop/konfigurieren/cv#/bodystyle?catalogId=WAEDX-TRB-2022-RangerSouthAfricaDEU202375?code=CA%23BB');
                                          },
                                          text: 'Jetzt zum konfigurator',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 64.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                            elevation: 0.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(width: 30.0)),
                    ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, 0.75),
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        child: custom_widgets.CameraPhoto(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 50.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.white,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    icon: Icon(
                                      Icons.close_rounded,
                                      color: Colors.white,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                  ),
                                  FlutterFlowTimer(
                                    initialTime: _model.timerMilliseconds,
                                    getDisplayTime: (value) =>
                                        StopWatchTimer.getDisplayTime(
                                      value,
                                      hours: false,
                                      milliSecond: false,
                                    ),
                                    timer: _model.timerController,
                                    updateStateInterval:
                                        Duration(milliseconds: 1000),
                                    onChanged:
                                        (value, displayTime, shouldUpdate) {
                                      _model.timerMilliseconds = value;
                                      _model.timerValue = displayTime;
                                      if (shouldUpdate) setState(() {});
                                    },
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                  ),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.white,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    icon: Icon(
                                      Icons.photo_camera_outlined,
                                      color: Colors.white,
                                      size: 24.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: Container(
                                width: double.infinity,
                                height: MediaQuery.sizeOf(context).height * 0.4,
                                decoration: BoxDecoration(),
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Builder(
                                  builder: (context) {
                                    final dialog = _model.chatHistory
                                        .map((e) => e)
                                        .toList();
                                    return SingleChildScrollView(
                                      controller: _model.columnMobile,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(dialog.length,
                                            (dialogIndex) {
                                          final dialogItem =
                                              dialog[dialogIndex];
                                          return Visibility(
                                            visible: dialogIndex != 0,
                                            child: MessageMobileWidget(
                                              key: Key(
                                                  'Key6fw_${dialogIndex}_of_${dialog.length}'),
                                              role: getJsonField(
                                                dialogItem,
                                                r'''$.role''',
                                              ).toString(),
                                              content: getJsonField(
                                                dialogItem,
                                                r'''$.content''',
                                              ).toString(),
                                            ),
                                          );
                                        }).divide(SizedBox(height: 20.0)),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                if (_model.buttons == 0) {
                                  return FFButtonWidget(
                                    onPressed: () async {
                                      _model.timerController.onExecute
                                          .add(StopWatchExecute.start);
                                      await actions.recordAudio();
                                      setState(() {
                                        _model.buttons = 1;
                                      });
                                    },
                                    text: 'Press to speak',
                                    icon: Icon(
                                      FFIcons.krecord,
                                      size: 19.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 64.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 10.0, 0.0),
                                      color: Color(0xFF4249F3),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFE6E9F2),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    showLoadingIndicator: false,
                                  );
                                } else if (_model.buttons == 1) {
                                  return FFButtonWidget(
                                    onPressed: () async {
                                      _model.timerController.onExecute
                                          .add(StopWatchExecute.stop);
                                      _model.recordMobile =
                                          await actions.stopAudioRecording();
                                      setState(() {
                                        _model.addToChatHistory(
                                            functions.convertToJSON(
                                                _model.recordMobile!, 'user'));
                                      });
                                      _model.chatGPTResponseMobile =
                                          await ChatGPTCompletionCall.call(
                                        messagesJson: _model.chatHistory,
                                      );
                                      if ((_model.chatGPTResponseMobile
                                              ?.succeeded ??
                                          true)) {
                                        await actions.textToAudio(
                                          ChatGPTCompletionCall.content(
                                            (_model.chatGPTResponseMobile
                                                    ?.jsonBody ??
                                                ''),
                                          ).toString(),
                                          FFAppState()
                                              .assistantSelected
                                              .toString(),
                                        );
                                        setState(() {
                                          _model.addToChatHistory(
                                              ChatGPTCompletionCall.message(
                                            (_model.chatGPTResponseMobile
                                                    ?.jsonBody ??
                                                ''),
                                          ));
                                          _model.buttons = 0;
                                        });
                                        await _model.columnMobile?.animateTo(
                                          _model.columnMobile!.position
                                              .maxScrollExtent,
                                          duration: Duration(milliseconds: 200),
                                          curve: Curves.ease,
                                        );
                                      }

                                      setState(() {});
                                    },
                                    text: 'Send',
                                    icon: Icon(
                                      FFIcons.ksend,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 64.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 10.0, 0.0),
                                      color: Color(0xFF4249F3),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFE6E9F2),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  );
                                } else {
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed(
                                            'GetTranscript',
                                            queryParameters: {
                                              'conversation': serializeParam(
                                                _model.chatHistory,
                                                ParamType.JSON,
                                                true,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        text: 'Done',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 64.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFF4249F3),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: Color(0xFFE6E9F2),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                        showLoadingIndicator: false,
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              _model.timerController.onExecute
                                                  .add(StopWatchExecute.reset);

                                              setState(() {
                                                _model.buttons = 0;
                                              });
                                            },
                                            text: 'Redo',
                                            icon: Icon(
                                              FFIcons.kredo,
                                              size: 19.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: double.infinity,
                                              height: 64.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              color: Color(0x19E6E9F2),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color: Color(0x80E6E9F2),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
