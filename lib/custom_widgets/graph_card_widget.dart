import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GraphCardWidget extends StatelessWidget {
  final String title;
  final Color activeColor, fontColor;
  final bool isActive;

  const GraphCardWidget({
    Key key,
    this.title,
    this.activeColor,
    this.fontColor,
     this.isActive
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 50.0,
      width: size.width/6.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0
        ),
        color: activeColor,
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.spartan(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
