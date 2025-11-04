import '/backend/api_requests/api_calls.dart';
import '/components/popupacept_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'principalsign_model.dart';
export 'principalsign_model.dart';

class PrincipalsignWidget extends StatefulWidget {
  const PrincipalsignWidget({super.key});

  static String routeName = 'principalsign';
  static String routePath = '/principalsign';

  @override
  State<PrincipalsignWidget> createState() => _PrincipalsignWidgetState();
}

class _PrincipalsignWidgetState extends State<PrincipalsignWidget> {
  late PrincipalsignModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrincipalsignModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0));
      if (FFAppState().jwt == null || FFAppState().jwt == '') {
        context.goNamed(LoginsignWidget.routeName);
      } else {
        if (await getPermissionStatus(locationPermission)) {
          FFAppState().geolocation = currentUserLocationValue;
          safeSetState(() {});
        }
      }
    });
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        drawer: Drawer(
          elevation: 16.0,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.rocket,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          size: 35.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 32.0, 0.0, 0.0),
                                          child: Text(
                                            'Bienvenido',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 34.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              Navigator.pop(context);
                                            },
                                            child: Icon(
                                              Icons.west_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              size: 30.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.face_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 60.0,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFAppState().emailsign,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 15.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ],
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(PrincipalsignWidget.routeName);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.check,
                            color: FlutterFlowTheme.of(context).accent1,
                            size: 30.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Fichar',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).accent1,
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.4,
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(SalirsignWidget.routeName);
                    },
                    text: 'Cerrar sesión',
                    icon: Icon(
                      Icons.power_settings_new,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.montserrat(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 8.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          iconTheme: IconThemeData(color: FlutterFlowTheme.of(context).accent2),
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logovadavo.png',
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: MediaQuery.sizeOf(context).height * 0.13,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
                FutureBuilder<ApiCallResponse>(
                  future: (_model.apiRequestCompleter ??=
                          Completer<ApiCallResponse>()
                            ..complete(LastSignCall.call(
                              jwt: FFAppState().jwt,
                            )))
                      .future,
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitPulse(
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    final columnLastSignResponse = snapshot.data!;

                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (!LastSignCall.entrar(
                              columnLastSignResponse.jsonBody,
                            ))
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/ICONO_ENTRADA_GREY.png',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            if (LastSignCall.entrar(
                              columnLastSignResponse.jsonBody,
                            ))
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/ICONO_ENTRADA_COLOR.png',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            FFButtonWidget(
                              onPressed: !LastSignCall.entrar(
                                columnLastSignResponse.jsonBody,
                              )
                                  ? null
                                  : () async {
                                      currentUserLocationValue =
                                          await getCurrentUserLocation(
                                              defaultLocation:
                                                  LatLng(0.0, 0.0));
                                      _model.apiResultfqa =
                                          await AddSignCall.call(
                                        jwt: FFAppState().jwt,
                                        tipo: 1,
                                        latitud: currentUserLocationValue
                                            ?.toString(),
                                      );

                                      if ((_model.apiResultfqa?.succeeded ??
                                          true)) {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.white,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.4,
                                                  child: PopupaceptWidget(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        safeSetState(() =>
                                            _model.apiRequestCompleter = null);
                                        await _model
                                            .waitForApiRequestCompleted();
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              AddSignCall.message(
                                                (_model.apiResultfqa
                                                        ?.jsonBody ??
                                                    ''),
                                              ).toString(),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                              text: 'Entrar',
                              options: FFButtonOptions(
                                width: 150.0,
                                height: 40.0,
                                padding: EdgeInsets.all(0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).datiumSign,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                                disabledColor:
                                    FlutterFlowTheme.of(context).accent3,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (!LastSignCall.pausa(
                              columnLastSignResponse.jsonBody,
                            ))
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/ICONO_PAUSA_GREY.png',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            if (LastSignCall.pausa(
                              columnLastSignResponse.jsonBody,
                            ))
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/ICONO_PAUSA_COLOR.png',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            FFButtonWidget(
                              onPressed: !LastSignCall.pausa(
                                columnLastSignResponse.jsonBody,
                              )
                                  ? null
                                  : () async {
                                      currentUserLocationValue =
                                          await getCurrentUserLocation(
                                              defaultLocation:
                                                  LatLng(0.0, 0.0));
                                      _model.apiResultfqaCopy =
                                          await AddSignCall.call(
                                        jwt: FFAppState().jwt,
                                        tipo: 3,
                                        latitud: currentUserLocationValue
                                            ?.toString(),
                                      );

                                      if ((_model.apiResultfqa?.succeeded ??
                                          true)) {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.white,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.4,
                                                  child: PopupaceptWidget(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        safeSetState(() =>
                                            _model.apiRequestCompleter = null);
                                        await _model
                                            .waitForApiRequestCompleted();
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              AddSignCall.message(
                                                (_model.apiResultfqa
                                                        ?.jsonBody ??
                                                    ''),
                                              ).toString(),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                              text: 'Pausa',
                              options: FFButtonOptions(
                                width: 150.0,
                                height: 40.0,
                                padding: EdgeInsets.all(0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color:
                                    FlutterFlowTheme.of(context).customColor1,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                                disabledColor:
                                    FlutterFlowTheme.of(context).accent3,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (!LastSignCall.rea(
                              columnLastSignResponse.jsonBody,
                            ))
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/ICONO_REANUDAR_GREY.png',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            if (LastSignCall.rea(
                              columnLastSignResponse.jsonBody,
                            ))
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/ICONO_REANUDAR_COLOR.png',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            FFButtonWidget(
                              onPressed: !LastSignCall.rea(
                                columnLastSignResponse.jsonBody,
                              )
                                  ? null
                                  : () async {
                                      currentUserLocationValue =
                                          await getCurrentUserLocation(
                                              defaultLocation:
                                                  LatLng(0.0, 0.0));
                                      _model.apiResultfqaCopy2 =
                                          await AddSignCall.call(
                                        jwt: FFAppState().jwt,
                                        tipo: 1,
                                        latitud: currentUserLocationValue
                                            ?.toString(),
                                      );

                                      if ((_model.apiResultfqa?.succeeded ??
                                          true)) {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.white,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.4,
                                                  child: PopupaceptWidget(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        safeSetState(() =>
                                            _model.apiRequestCompleter = null);
                                        await _model
                                            .waitForApiRequestCompleted();
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              AddSignCall.message(
                                                (_model.apiResultfqa
                                                        ?.jsonBody ??
                                                    ''),
                                              ).toString(),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                              text: 'Reanudar',
                              options: FFButtonOptions(
                                width: 150.0,
                                height: 40.0,
                                padding: EdgeInsets.all(0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color:
                                    FlutterFlowTheme.of(context).customColor2,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                                disabledColor:
                                    FlutterFlowTheme.of(context).accent3,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (!LastSignCall.salir(
                              columnLastSignResponse.jsonBody,
                            ))
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/ICONO_SALIDA_GREY.png',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            if (LastSignCall.salir(
                              columnLastSignResponse.jsonBody,
                            ))
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/ICONO_SALIDA_COLOR.png',
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            FFButtonWidget(
                              onPressed: !LastSignCall.salir(
                                columnLastSignResponse.jsonBody,
                              )
                                  ? null
                                  : () async {
                                      currentUserLocationValue =
                                          await getCurrentUserLocation(
                                              defaultLocation:
                                                  LatLng(0.0, 0.0));
                                      _model.apiResultfqaCopy3 =
                                          await AddSignCall.call(
                                        jwt: FFAppState().jwt,
                                        tipo: 2,
                                        latitud: currentUserLocationValue
                                            ?.toString(),
                                      );

                                      if ((_model.apiResultfqa?.succeeded ??
                                          true)) {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.white,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.4,
                                                  child: PopupaceptWidget(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        safeSetState(() =>
                                            _model.apiRequestCompleter = null);
                                        await _model
                                            .waitForApiRequestCompleted();
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              AddSignCall.message(
                                                (_model.apiResultfqa
                                                        ?.jsonBody ??
                                                    ''),
                                              ).toString(),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                              text: 'Salir',
                              options: FFButtonOptions(
                                width: 150.0,
                                height: 40.0,
                                padding: EdgeInsets.all(0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color:
                                    FlutterFlowTheme.of(context).customColor3,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                                disabledColor:
                                    FlutterFlowTheme.of(context).accent3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
