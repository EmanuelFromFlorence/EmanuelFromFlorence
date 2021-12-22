import '../auth/auth_util.dart';
import '../category_page/category_page_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key key}) : super(key: key);

  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'rowOnActionTriggerAnimation': AnimationInfo(
      curve: Curves.easeIn,
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
      delay: 480,
    ),
    'iconOnActionTriggerAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onActionTrigger,
      duration: 1420,
      fadeIn: true,
      scale: 2,
    ),
  };

  @override
  void initState() {
    super.initState();
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        final user = await signInWithGoogle(context);
                        if (user == null) {
                          return;
                        }
                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryPageWidget(),
                          ),
                          (r) => false,
                        );
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0x00090F13),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x3314181B),
                              offset: Offset(0, 2),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        alignment: AlignmentDirectional(0, 0),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeWidget(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 24,
                          ),
                        ).animated(
                            [animationsMap['iconOnActionTriggerAnimation']]),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        final user = await signInWithApple(context);
                        if (user == null) {
                          return;
                        }
                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryPageWidget(),
                          ),
                          (r) => false,
                        );
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0x00090F13),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x3314181B),
                              offset: Offset(0, 2),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        alignment: AlignmentDirectional(0, 0),
                        child: Icon(
                          Icons.library_music,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        final user = await signInWithFacebook(context);
                        if (user == null) {
                          return;
                        }
                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryPageWidget(),
                          ),
                          (r) => false,
                        );
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0x00090F13),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x3314181B),
                              offset: Offset(0, 2),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        alignment: AlignmentDirectional(0, 0),
                        child: Icon(
                          Icons.videocam,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ).animated([animationsMap['rowOnActionTriggerAnimation']]),
    );
  }
}
