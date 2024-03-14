import 'package:flutter/material.dart';
import 'package:test_task/generated/assets.dart';

class CommonBg extends StatefulWidget {
  final Widget body;
  const CommonBg({super.key,required this.body});

  @override
  State<CommonBg> createState() => _CommonBgState();
}

class _CommonBgState extends State<CommonBg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Image.asset(Assets.pokemonImgPokemonBg,height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
          widget.body
        ],
      ),
    );
  }
}
