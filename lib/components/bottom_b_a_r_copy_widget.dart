import '../components/bottom_bar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBARCopyWidget extends StatefulWidget {
  const BottomBARCopyWidget({Key key}) : super(key: key);

  @override
  _BottomBARCopyWidgetState createState() => _BottomBARCopyWidgetState();
}

class _BottomBARCopyWidgetState extends State<BottomBARCopyWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0.05),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF81C784),
          borderRadius: BorderRadius.circular(30),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Color(0x00C71919),
          ),
        ),
        child: BottomBarWidget(),
      ),
    );
  }
}
