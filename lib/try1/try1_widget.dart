import '../components/audio_player_copy_widget.dart';
import '../components/audio_player_widget.dart';
import '../components/bottom_b_a_r_copy_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class Try1Widget extends StatefulWidget {
  const Try1Widget({Key key}) : super(key: key);

  @override
  _Try1WidgetState createState() => _Try1WidgetState();
}

class _Try1WidgetState extends State<Try1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF6C1EE2),
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(-0.01, -0.79),
            child: Image.network(
              '',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, -1.28),
            child: Image.asset(
              'assets/images/ae78df1ec46fe622dd0d3de6907fbe74-1.gif',
              width: 400,
              height: MediaQuery.of(context).size.height * 1,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, -0.14),
            child: Slidable(
              actionPane: const SlidableScrollActionPane(),
              secondaryActions: [
                IconSlideAction(
                  caption: 'Share',
                  color: Colors.blue,
                  icon: Icons.share,
                  onTap: () {
                    print('SlidableActionWidget pressed ...');
                  },
                ),
              ],
              child: ListTile(
                title: Text(
                  'Track 2',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF0CDED8),
                  ),
                ),
                subtitle: Text(
                  'Play',
                  style: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.tertiaryColor,
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
            alignment: AlignmentDirectional(0, -0.41),
            child: AudioPlayerWidget(),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0.57),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 2, 10),
              child: AudioPlayerCopyWidget(),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.05, 0.05),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 550, 0, 0),
              child: AudioPlayerWidget(),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0.08),
            child: ListTile(
              title: Text(
                'Track 3',
                style: FlutterFlowTheme.title3.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFF0CDED8),
                ),
              ),
              subtitle: Text(
                'Play',
                style: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.tertiaryColor,
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
            alignment: AlignmentDirectional(0, 0.3),
            child: ListTile(
              title: Text(
                'Track 4',
                style: FlutterFlowTheme.title3.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFF0CDED8),
                ),
              ),
              subtitle: Text(
                'Play',
                style: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.tertiaryColor,
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
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 700, 0, 0),
              child: BottomBARCopyWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
