import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioPlayerCopyWidget extends StatefulWidget {
  const AudioPlayerCopyWidget({Key key}) : super(key: key);

  @override
  _AudioPlayerCopyWidgetState createState() => _AudioPlayerCopyWidgetState();
}

class _AudioPlayerCopyWidgetState extends State<AudioPlayerCopyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(66, 1.38, 5, 0),
            child: FlutterFlowAudioPlayer(
              audio: Audio.network(
                '',
                metas: Metas(
                  id: 'df3hg_-c7r1p033',
                ),
              ),
              titleTextStyle: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Poppins',
                color: Color(0xFF0D83D2),
                fontWeight: FontWeight.w600,
              ),
              playbackDurationTextStyle: FlutterFlowTheme.bodyText1.override(
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
          Align(
            alignment: AlignmentDirectional(-1.22, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.3, 1.2, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(1),
                  bottomRight: Radius.circular(1),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(1),
                ),
                child: Image.asset(
                  'assets/images/Group_18_1.png',
                  width: 122,
                  height: 126,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
