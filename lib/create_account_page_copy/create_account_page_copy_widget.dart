import '../components/bottom_b_a_r_widget.dart';
import '../components/carousel_widget.dart';
import '../components/vertical_slider_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountPageCopyWidget extends StatefulWidget {
  const CreateAccountPageCopyWidget({Key key}) : super(key: key);

  @override
  _CreateAccountPageCopyWidgetState createState() =>
      _CreateAccountPageCopyWidgetState();
}

class _CreateAccountPageCopyWidgetState
    extends State<CreateAccountPageCopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0x004293C7),
      drawer: Drawer(
        elevation: 16,
      ),
      body: Stack(
        alignment: AlignmentDirectional(0, -0.050000000000000044),
        children: [
          Align(
            alignment: AlignmentDirectional(0, -1),
            child: Image.asset(
              'assets/images/ae78df1ec46fe622dd0d3de6907fbe74-1.gif',
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 28, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 0,
                          buttonSize: 40,
                          fillColor: Color(0xFFA5D073),
                          icon: Icon(
                            Icons.menu,
                            color: FlutterFlowTheme.secondaryColor,
                            size: 25,
                          ),
                          onPressed: () async {
                            scaffoldKey.currentState.openDrawer();
                          },
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(275, 0, 0, 0),
                          child: Image.asset(
                            'assets/images/tunewell.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(
                          color: Color(0x7681C784),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 200,
                              color: Color(0xFF0D0000),
                              spreadRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.circular(30),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Color(0x00080101),
                          ),
                        ),
                        alignment:
                            AlignmentDirectional(0, -0.050000000000000044),
                        child: Stack(
                          children: [
                            CarouselWidget(),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 250, 0, 0),
                              child: VerticalSliderWidget(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: BottomBARWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
