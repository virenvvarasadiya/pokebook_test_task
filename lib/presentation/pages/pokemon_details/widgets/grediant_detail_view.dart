import 'package:flutter/material.dart';
import 'package:test_task/utils/Theme/app_color.dart';

class GradiantDetailsView extends StatelessWidget {
  final Widget child;

  const GradiantDetailsView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.symmetric(
            horizontal: BorderSide(color: Theme.of(context).colorScheme.secondary)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Theme.of(context).colorScheme.background,
            AppColor.aboutGradiant,
            Theme.of(context).colorScheme.background,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.06),
            blurRadius: 10.0,
            spreadRadius: -3.0,
            offset: const Offset(
              0.5,
              0.0,
            ),
          )
        ],
      ),
      child: child,
    );
  }
}
