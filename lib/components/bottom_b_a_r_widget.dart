import '../components/bottom_bar_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBARWidget extends StatefulWidget {
  const BottomBARWidget({Key key}) : super(key: key);

  @override
  _BottomBARWidgetState createState() => _BottomBARWidgetState();
}

class _BottomBARWidgetState extends State<BottomBARWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'bottomBarOnPageLoadAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 1620,
      delay: 440,
      fadeIn: true,
      slideOffset: Offset(-83, 0),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0.05),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFA5D073),
            borderRadius: BorderRadius.circular(30),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Color(0x00C71919),
            ),
          ),
          child: BottomBarWidget()
              .animated([animationsMap['bottomBarOnPageLoadAnimation']]),
        ),
      ),
    );
  }
}
