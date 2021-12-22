import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExprWidget extends StatefulWidget {
  const ExprWidget({Key key}) : super(key: key);

  @override
  _ExprWidgetState createState() => _ExprWidgetState();
}

class _ExprWidgetState extends State<ExprWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0x00010325),
        iconTheme: IconThemeData(color: Color(0xFF13E055)),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      drawer: Drawer(
        elevation: 16,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Image.asset(
                'assets/images/ae78df1ec46fe622dd0d3de6907fbe74-1.gif',
                width: 1000,
                height: 1000,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.44),
              child: ListTile(
                title: Text(
                  'Play',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Track 2',
                  style: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF0CDED8),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.44),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                child: ListTile(
                  title: Text(
                    'Play',
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'Track 3',
                    style: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF0CDED8),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.44),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 400, 0, 0),
                child: ListTile(
                  title: Text(
                    'Play',
                    style: FlutterFlowTheme.title3.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'Track 4',
                    style: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF0CDED8),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.39, 0.17),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(65, 3, 4, 1),
                      child: FlutterFlowAudioPlayer(
                        audio: Audio.network(
                          '',
                          metas: Metas(
                            id: 'df3hg_-q8rhhioc',
                            title: 'Deep Relaxation',
                          ),
                        ),
                        titleTextStyle: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF0D83D2),
                          fontWeight: FontWeight.w100,
                        ),
                        playbackDurationTextStyle:
                            FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF9D9D9D),
                          fontSize: 12,
                        ),
                        fillColor: Colors.white,
                        playbackButtonColor: FlutterFlowTheme.primaryColor,
                        activeTrackColor: Color(0xFF57636C),
                        elevation: 4,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.39, 0.17),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 17, 1),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(0),
                        ),
                        child: Image.asset(
                          'assets/images/Schermata_2021-07-02_alle_16.33.41.png',
                          width: 155,
                          height: 83,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 400),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset(
                          'assets/images/58143-gradient-loader-02.gif',
                          width: 100,
                          height: 100,
                          fit: BoxFit.fitWidth,
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
    );
  }
}
