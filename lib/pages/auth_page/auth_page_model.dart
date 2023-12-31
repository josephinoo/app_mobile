import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress_Login widget.
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;
  // State field(s) for password_Login widget.
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;
  // Stores action output result for [Backend Call - API (login)] action in Button-Login widget.
  ApiCallResponse? apiLoginResult;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for passwordConfirm widget.
  TextEditingController? passwordConfirmController;
  String? Function(BuildContext, String?)? passwordConfirmControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordLoginVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailAddressLoginController?.dispose();
    passwordLoginController?.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
    passwordConfirmController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
