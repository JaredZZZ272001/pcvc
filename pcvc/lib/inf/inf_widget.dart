import '/flutter_max/flutter_max_animations.dart';
import '/flutter_max/flutter_max_theme.dart';
import '/flutter_max/flutter_max_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inf_model.dart';
export 'inf_model.dart';

class InfWidget extends StatefulWidget {
  const InfWidget({Key? key}) : super(key: key);

  @override
  _InfWidgetState createState() => _InfWidgetState();
}

class _InfWidgetState extends State<InfWidget> with TickerProviderStateMixin {
  late InfModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  int get pageViewCurrentIndex => _model.pageViewController != null &&
          _model.pageViewController!.hasClients &&
          _model.pageViewController!.page != null
      ? _model.pageViewController!.page!.round()
      : 0;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      loop: true,
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 3200.ms,
          begin: Offset(0.0, -80.0),
          end: Offset(0.0, 0.0),
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 3200.ms,
          duration: 3200.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -80.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0.9, 0.9),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: Offset(0.9, 0.9),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0.9, 0.9),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: Offset(0.9, 0.9),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0.9, 0.9),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: Offset(0.9, 0.9),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              child: Container(
                width: double.infinity,
                height: 519.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 600.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: MasonryGridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        itemCount: 11,
                        itemBuilder: (context, index) {
                          return [
                            () => ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(16.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                  child: Image.network(
                                    'https://i0.wp.com/seguridad.guanajuato.gob.mx/wp-content/uploads/2021/03/ProteccionCivilGTO.jpg?fit=1080%2C607&ssl=1',
                                    width: 120.0,
                                    height: 120.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    'https://www.alcaldesdemexico.com/wp-content/uploads/2022/09/proteccion-civil.png',
                                    width: 120.0,
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(16.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                  child: Image.network(
                                    'https://picsum.photos/seed/32/600',
                                    width: 100.0,
                                    height: 0.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  child: Image.network(
                                    'data:image/jpeg;base64,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',
                                    width: 80.0,
                                    height: 180.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    'https://cgproteccioncivil.edomex.gob.mx/sites/cgproteccioncivil.edomex.gob.mx/files/images/que%20ofrecemos/Imagen2.png',
                                    width: 120.0,
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    'https://www.tlalpan.cdmx.gob.mx/wp-content/uploads/2021/07/Proteccion-civil-logo-gen.png',
                                    width: 120.0,
                                    height: 180.0,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  child: Image.network(
                                    'https://www.protecenpc.com/wp-content/uploads/2022/09/Evacuacion-1.png',
                                    width: 120.0,
                                    height: 190.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    'https://www.segurilatam.com/wp-content/uploads/sites/5/2023/03/proteccion-civil-rescate-automoviles.jpg',
                                    width: 120.0,
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    'https://zhn.com.mx/wp-content/uploads/2022/02/1E5AAE32-5779-4E47-97BF-4EA27118CD51-1024x768.jpeg',
                                    width: 120.0,
                                    height: 180.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  child: Image.network(
                                    'https://csa.edomex.gob.mx/sites/csa.edomex.gob.mx/files/images/Mesa%20de%20trabajo%205.png',
                                    width: 120.0,
                                    height: 190.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            () => ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    'https://picsum.photos/seed/32/600',
                                    width: 120.0,
                                    height: 160.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                          ][index]();
                        },
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 670.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 264.0,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 50.0),
                              child: PageView(
                                controller: _model.pageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        48.0, 0.0, 48.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'PCVC',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation1']!),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            'Proteccion civil de Venustiano Carranza Movil',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge,
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation2']!),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        48.0, 0.0, 48.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Todo al momento',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation3']!),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            'Enterate todo sobre la informacion que otorga proteccion civil de VC',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge,
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation4']!),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        48.0, 0.0, 48.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Enterate  y mantente seguro',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation5']!),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            'Tu integridad es lo mas importante',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge,
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation6']!),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child:
                                    smooth_page_indicator.SmoothPageIndicator(
                                  controller: _model.pageViewController ??=
                                      PageController(initialPage: 0),
                                  count: 3,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) async {
                                    await _model.pageViewController!
                                        .animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect:
                                      smooth_page_indicator.ExpandingDotsEffect(
                                    expansionFactor: 3.0,
                                    spacing: 8.0,
                                    radius: 16.0,
                                    dotWidth: 8.0,
                                    dotHeight: 8.0,
                                    dotColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    activeDotColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    paintStyle: PaintingStyle.fill,
                                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
