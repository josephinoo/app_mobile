import '/components/home/home_section/home_section_widget.dart';
import '/components/home/roulette_principal/roulette_principal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for RoulettePrincipal component.
  late RoulettePrincipalModel roulettePrincipalModel;
  // Model for home_section component.
  late HomeSectionModel homeSectionModel1;
  // Model for home_section component.
  late HomeSectionModel homeSectionModel2;
  // Model for home_section component.
  late HomeSectionModel homeSectionModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    roulettePrincipalModel =
        createModel(context, () => RoulettePrincipalModel());
    homeSectionModel1 = createModel(context, () => HomeSectionModel());
    homeSectionModel2 = createModel(context, () => HomeSectionModel());
    homeSectionModel3 = createModel(context, () => HomeSectionModel());
  }

  void dispose() {
    unfocusNode.dispose();
    roulettePrincipalModel.dispose();
    homeSectionModel1.dispose();
    homeSectionModel2.dispose();
    homeSectionModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
