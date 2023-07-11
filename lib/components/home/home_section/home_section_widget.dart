import '/components/home/home_card/home_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_section_model.dart';
export 'home_section_model.dart';

class HomeSectionWidget extends StatefulWidget {
  const HomeSectionWidget({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;

  @override
  _HomeSectionWidgetState createState() => _HomeSectionWidgetState();
}

class _HomeSectionWidgetState extends State<HomeSectionWidget> {
  late HomeSectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeSectionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title!,
          style: FlutterFlowTheme.of(context).titleMedium,
        ),
        Container(
          width: double.infinity,
          height: 300.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 280.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
              Container(
                width: 280.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
              Container(
                width: 280.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
              Container(
                width: 280.0,
                decoration: BoxDecoration(),
                child: wrapWithModel(
                  model: _model.homeCardModel,
                  updateCallback: () => setState(() {}),
                  child: HomeCardWidget(),
                ),
              ),
            ].divide(SizedBox(width: 20.0)),
          ),
        ),
      ].divide(SizedBox(height: 5.0)),
    );
  }
}
