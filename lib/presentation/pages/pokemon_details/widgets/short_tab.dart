import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShortTab extends StatelessWidget {
  final Color? color;
  final Color? textColor;
  final Color? tabBackgroundColor;
  final String? text;

  const ShortTab({super.key, this.text, this.color, this.textColor, this.tabBackgroundColor});

  @override
  Widget build(BuildContext context) {
    return Tab(
      iconMargin: EdgeInsets.zero,
      child: Container(
        width: 140,
        height: 42,
        decoration: ShapeDecoration(
          color: tabBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text(text.toString(),
              style: GoogleFonts.sofiaSans(
                  color: Theme.of(context).colorScheme.shadow,
                  fontSize: 17,
                  fontWeight: FontWeight.w700)),
        ),
      ),
    );
  }
}
