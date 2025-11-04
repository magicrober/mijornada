import '/backend/api_requests/api_calls.dart';
import '/components/popupacept_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'dart:async';
import 'principalsign_widget.dart' show PrincipalsignWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PrincipalsignModel extends FlutterFlowModel<PrincipalsignWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (addSign)] action in Button widget.
  ApiCallResponse? apiResultfqa;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (addSign)] action in Button widget.
  ApiCallResponse? apiResultfqaCopy;
  // Stores action output result for [Backend Call - API (addSign)] action in Button widget.
  ApiCallResponse? apiResultfqaCopy2;
  // Stores action output result for [Backend Call - API (addSign)] action in Button widget.
  ApiCallResponse? apiResultfqaCopy3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
