import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/generated/assets.dart';
import 'package:test_task/presentation/bloc/pokemon_bloc.dart';
import 'package:test_task/utils/Theme/app_color.dart';

class PokemonDetailsTopView extends StatelessWidget {
  const PokemonDetailsTopView({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemonBloc = context.read<PokemonBloc>();
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 70),
          child: Container(
            height: 280,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[AppColor.detailsGradiant1, AppColor.detailsGradiant2],
                ),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24), bottomRight: Radius.circular(24))),
          ),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: SvgPicture.asset(pokemonBloc.pokemon.pokemonImg ?? ""),
            )),
        InkWell(
          onTap: () {
            context.back();
          },
          borderRadius: BorderRadius.circular(10),
          child: Container(
              height: 38,
              width: 38,
              margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 10, left: 18),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).colorScheme.background),
              child: SvgPicture.asset(
                Assets.iconsBackIcon,
              )),
        )
      ],
    );
  }
}
