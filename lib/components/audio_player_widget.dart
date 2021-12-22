import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioPlayerWidget extends StatefulWidget {
  const AudioPlayerWidget({Key key}) : super(key: key);

  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(90, 4.7, 20, 0),
            child: FlutterFlowAudioPlayer(
              audio: Audio.network(
                '',
                metas: Metas(
                  id: 'df3hg_-3tc0uhyj',
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
              elevation: 0,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 4, 0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(10),
                topRight: Radius.circular(0),
              ),
              child: Image.asset(
                'assets/images/Schermata_2021-07-02_alle_16.33.41.png',
                width: 80,
                height: 75,
                fit: BoxFit.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
