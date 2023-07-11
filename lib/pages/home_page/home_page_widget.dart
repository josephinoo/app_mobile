import '/components/home/home_section/home_section_widget.dart';
import '/components/home/roulette_principal/roulette_principal_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'HOLA MARÍA',
                          style: FlutterFlowTheme.of(context).headlineLarge,
                        ),
                      ].addToStart(SizedBox(width: 25.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          '\"Frase del día\"',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontStyle: FontStyle.italic,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ].addToStart(SizedBox(width: 25.0)),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 90.0, 16.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        wrapWithModel(
                          model: _model.roulettePrincipalModel,
                          updateCallback: () => setState(() {}),
                          child: RoulettePrincipalWidget(),
                        ),
                        wrapWithModel(
                          model: _model.homeSectionModel1,
                          updateCallback: () => setState(() {}),
                          child: HomeSectionWidget(
                            title: 'Quienes nos necesitan',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.homeSectionModel2,
                          updateCallback: () => setState(() {}),
                          child: HomeSectionWidget(
                            title: '¿Puedo donar?',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.homeSectionModel3,
                          updateCallback: () => setState(() {}),
                          child: HomeSectionWidget(
                            title: 'Historias de donantes',
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 10.0))
                          .around(SizedBox(height: 10.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
