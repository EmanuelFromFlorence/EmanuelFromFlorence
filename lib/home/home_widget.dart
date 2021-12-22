import '../components/bottom_b_a_r_widget.dart';
import '../components/carousel_widget.dart';
import '../components/vertical_slider_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Color(0xC76C1EE2),
          iconTheme: IconThemeData(color: FlutterFlowTheme.secondaryColor),
          automaticallyImplyLeading: true,
          actions: [
            Image.asset(
              'assets/images/tunewell.png',
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
          ],
          elevation: 0,
        ),
      ),
      backgroundColor: Color(0xFF3F51B5),
      drawer: Container(
        width: 200,
        child: Drawer(
          elevation: 16,
        ),
      ),
      body: Stack(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Musictherapy Categories',
                                    style: FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.tertiaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CarouselWidget(),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 8, 20, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Free',
                                    style: FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            VerticalSliderWidget(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 640, 0, 0),
            child: BottomBARWidget(),
          ),
        ],
      ),
    );
  }
}
