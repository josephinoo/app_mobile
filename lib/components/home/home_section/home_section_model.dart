import '/components/home/home_card/home_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeSectionModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for HomeCard component.
  late HomeCardModel homeCardModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    homeCardModel = createModel(context, () => HomeCardModel());
  }

  void dispose() {
    homeCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
