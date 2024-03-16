import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/presentation/bloc/pokemon_bloc.dart';
import 'package:test_task/presentation/pages/pokemon_list_view/widgets/pokemon_card_widget.dart';
import 'package:test_task/utils/common_spacer.dart';

Widget commonTabTopView({required BuildContext context}) {
  return Column(
    children: [
      height(5),
      pokemonInfoView(
          context: context,
          fontSize: 56,
          fontWeight: FontWeight.w700,
          heightValue: 0,
          pokemon: context.read<PokemonBloc>().pokemon),
      height(10),
    ],
  );
}
