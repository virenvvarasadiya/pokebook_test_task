import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.55,
      width: MediaQuery.of(context).size.width * 0.4,
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Theme.of(context).colorScheme.background,
            const Color(0xFFD9D9D9).withOpacity(0.3),
            const Color(0xFFD9D9D9).withOpacity(0.5),
            Theme.of(context).colorScheme.background.withOpacity(0.8),
          ],
        ),
      ),
    );
  }
}
