import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_max/flutter_max_animations.dart';
import '/flutter_max/flutter_max_icon_button.dart';
import '/flutter_max/flutter_max_theme.dart';
import '/flutter_max/flutter_max_util.dart';
import '/flutter_max/flutter_max_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'logeo_model.dart';
export 'logeo_model.dart';

class LogeoWidget extends StatefulWidget {
  const LogeoWidget({Key? key}) : super(key: key);

  @override
  _LogeoWidgetState createState() => _LogeoWidgetState();
}

class _LogeoWidgetState extends State<LogeoWidget>
    with TickerProviderStateMixin {
  late LogeoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.8, 0.8),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.8, 0.8),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(30.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(90.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(90.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(90.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(30.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogeoModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Container(
          width: 300.0,
          child: Drawer(
            elevation: 16.0,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://image.jimcdn.com/app/cms/image/transf/dimension=553x10000:format=gif/path/s200a24f95ea25dd5/image/i62458be925b794ff/version/1387267167/image.gif',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('logeo');
                    },
                    text: 'Inicio',
                    options: FFButtonOptions(
                      width: 233.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x4CC4C3CF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                if (valueOrDefault(currentUserDocument?.rol, '') == 'ciudadano')
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('reporte');
                        },
                        text: 'Enviar reporte/alerta',
                        options: FFButtonOptions(
                          width: 233.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0x4CC4C3CF),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                if (valueOrDefault(currentUserDocument?.rol, '') == 'admin')
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('crear_noti');
                        },
                        text: 'Crear noticia',
                        options: FFButtonOptions(
                          width: 233.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0x4CC4C3CF),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('inf');
                    },
                    text: 'Acerca de',
                    options: FFButtonOptions(
                      width: 233.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x4CC4C3CF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('servicios');
                    },
                    text: 'Servicios',
                    options: FFButtonOptions(
                      width: 233.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x4CC4C3CF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('vc_pueb');
                    },
                    text: 'Ubicacion',
                    options: FFButtonOptions(
                      width: 233.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x4CC4C3CF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('redes_s');
                    },
                    text: 'Contacto',
                    options: FFButtonOptions(
                      width: 233.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x4CC4C3CF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      setDarkModeSetting(context, ThemeMode.dark);
                    },
                    text: 'Modo oscuro',
                    options: FFButtonOptions(
                      width: 233.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x4CC4C3CF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      setDarkModeSetting(context, ThemeMode.light);
                    },
                    text: 'Modo claro',
                    options: FFButtonOptions(
                      width: 233.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x4CC4C3CF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      GoRouter.of(context).prepareAuthEvent();
                      await authManager.signOut();
                      GoRouter.of(context).clearRedirectLocation();

                      context.goNamedAuth('user', context.mounted);
                    },
                    text: 'Cerrar sesion',
                    options: FFButtonOptions(
                      width: 233.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x4CC4C3CF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
            child: Text(
              'Proteccion civil Venustiano Carranza',
              style: FlutterFlowTheme.of(context).labelMedium,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 16.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                icon: Icon(
                  Icons.menu_open,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 0.0),
                      child: Text(
                        currentUserEmail,
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Outfit',
                              fontSize: 20.0,
                            ),
                      ),
                    ),
                  ],
                ),
                if (valueOrDefault(currentUserDocument?.rol, '') == 'admin')
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => Container(
                        width: double.infinity,
                        height: 230.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              'https://quees.com.mx/wp-content/uploads/2021/10/Que-es-un-reporte.jpg',
                            ).image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x250F1113),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Color(0x430F1113),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 12.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 70.0, 0.0),
                                  child: Text(
                                    'Reportes recibidos',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: Text(
                                    'Revisa los reportes que te han enviado usuarios de la plataforma',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 4.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Image.network(
                                            'https://cdn-icons-png.flaticon.com/512/5674/5674015.png',
                                            width: 44.0,
                                            height: 44.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 4.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Image.network(
                                            'https://cdn-icons-png.flaticon.com/512/196/196779.png',
                                            width: 44.0,
                                            height: 44.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 4.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Image.network(
                                            'data:image/png;base64,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',
                                            width: 44.0,
                                            height: 44.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed('lista_reportes');
                                    },
                                    text: 'Ver ahora',
                                    icon: Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall,
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation1']!),
                    ),
                  ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 230.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.network(
                          'https://i0.wp.com/seguridad.guanajuato.gob.mx/wp-content/uploads/2021/03/ProteccionCivilGTO.jpg?fit=1080%2C607&ssl=1',
                        ).image,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x250F1113),
                          offset: Offset(0.0, 1.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0x430F1113),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 12.0, 12.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 70.0, 0.0),
                              child: Text(
                                'Bienvenido',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'Salvaguardar la integridad fisica de las personas ante la eventualidad de un desastre provocado por agentes naturales o humanos. A travez de acciones que reduzcan o eliminen la perdida de vidas humanas, la destruccion de bienes materiales y el daño a la naturaleza.',
                                style: FlutterFlowTheme.of(context).titleSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation2']!),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                  child: Text(
                    'Informacion de protocolos',
                    style: FlutterFlowTheme.of(context).labelLarge,
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation1']!),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 360.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 5.0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 16.0, 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('servicios');
                              },
                              child: Container(
                                width: 200.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x430F1113),
                                      offset: Offset(0.0, 1.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 8.0, 8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://medlineplus.gov/images/EmergencyMedicalServices_share.jpg',
                                          width: double.infinity,
                                          height: 220.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Text(
                                          'Servicio de emergencia',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation3']!),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 16.0, 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('servicios');
                              },
                              child: Container(
                                width: 200.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x430F1113),
                                      offset: Offset(0.0, 1.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 8.0, 8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://www.diarioelindependiente.mx/noticias/2020/06/original/1592028248d1add.jpg',
                                          width: double.infinity,
                                          height: 220.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Text(
                                          'Servicio de asistencia',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation4']!),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 16.0, 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('servicios');
                              },
                              child: Container(
                                width: 200.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x430F1113),
                                      offset: Offset(0.0, 1.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 8.0, 8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://www.conalep.edu.mx/sites/default/files/micrositios/ofertaeducativa/areas_conocimiento/prod_y_transf/internas/proteccion_civil.jpg',
                                          width: double.infinity,
                                          height: 220.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Text(
                                          'Jefes de proteccion civil',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation5']!),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 12.0),
                  child: Text(
                    'Ultimas noticias',
                    style: FlutterFlowTheme.of(context).labelLarge,
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation2']!),
                ),
                StreamBuilder<List<NoticiasRecord>>(
                  stream: queryNoticiasRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      );
                    }
                    List<NoticiasRecord> listViewNoticiasRecordList =
                        snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewNoticiasRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewNoticiasRecord =
                            listViewNoticiasRecordList[listViewIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 12.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 7.0,
                                  color: Color(0x2F1D2429),
                                  offset: Offset(0.0, 3.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 12.0, 12.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'ver_noti',
                                        queryParameters: {
                                          'name': serializeParam(
                                            listViewNoticiasRecord.nameN,
                                            ParamType.String,
                                          ),
                                          'foto': serializeParam(
                                            listViewNoticiasRecord.fotoN,
                                            ParamType.String,
                                          ),
                                          'des': serializeParam(
                                            listViewNoticiasRecord.descripN,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        listViewNoticiasRecord.fotoN,
                                        width: double.infinity,
                                        height: 160.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          listViewNoticiasRecord.nameN,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (valueOrDefault(
                                              currentUserDocument?.rol, '') ==
                                          'admin')
                                        AuthUserStreamWidget(
                                          builder: (context) => FFButtonWidget(
                                            onPressed: () async {
                                              var confirmDialogResponse =
                                                  await showDialog<bool>(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                '¿Deseas eliminar esta noticia?'),
                                                            content: Text(
                                                                'Ya no sera publica'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        false),
                                                                child: Text(
                                                                    'Cancel'),
                                                              ),
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        true),
                                                                child: Text(
                                                                    'Confirm'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ) ??
                                                      false;
                                              if (confirmDialogResponse) {
                                                await listViewNoticiasRecord
                                                    .reference
                                                    .delete();
                                              }
                                            },
                                            text: '',
                                            icon: Icon(
                                              Icons.delete,
                                              size: 15.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFFFF0000),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
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
