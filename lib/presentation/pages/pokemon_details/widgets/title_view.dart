import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsTitleView extends StatefulWidget {
  final String title;

  const DetailsTitleView({super.key, required this.title});

  @override
  State<DetailsTitleView> createState() => _DetailsTitleViewState();
}

class _DetailsTitleViewState extends State<DetailsTitleView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Theme.of(context).colorScheme.background.withOpacity(0.7),
            Theme.of(context).colorScheme.background.withOpacity(0.9),
            Theme.of(context).colorScheme.background.withOpacity(0.9),
            Theme.of(context).colorScheme.background.withOpacity(0.7),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.1),
            blurRadius: 10.0,
            spreadRadius: -1.0,
            offset: const Offset(
              0.5,
              0.0,
            ),
          )
        ],
      ),
      child: Center(
        child: Text(
          widget.title,
          style: GoogleFonts.sofiaSans(
              color: Theme.of(context).colorScheme.shadow,
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
