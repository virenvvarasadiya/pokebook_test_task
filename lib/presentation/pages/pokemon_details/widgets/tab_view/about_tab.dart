import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task/presentation/bloc/pokemon_bloc.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/custom_divider.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/grediant_detail_view.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/tab_view/common_top_view.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/title_view.dart';
import 'package:test_task/utils/common_spacer.dart';

class AboutTabView extends StatelessWidget {
  const AboutTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemonBloc = context.read<PokemonBloc>();
    return SingleChildScrollView(
      child: Column(
        children: [
          commonTabTopView(context: context),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                const DetailsTitleView(
                  title: "About",
                ),
                GradiantDetailsView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Height",
                            style: GoogleFonts.sofiaSans(
                                color: Theme.of(context).colorScheme.shadow,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          width(20),
                          Text(
                            pokemonBloc.pokemon.pokemonDetails?.height ?? "-",
                            style: GoogleFonts.sofiaSans(
                                color: Theme.of(context).colorScheme.shadow,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const CustomDivider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: GoogleFonts.sofiaSans(
                                color: Theme.of(context).colorScheme.shadow,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          width(20),
                          Text(
                            pokemonBloc.pokemon.pokemonDetails?.weight ?? "-",
                            style: GoogleFonts.sofiaSans(
                                color: Theme.of(context).colorScheme.shadow,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const CustomDivider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Abilities",
                            style: GoogleFonts.sofiaSans(
                                color: Theme.of(context).colorScheme.shadow,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          width(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                                pokemonBloc.pokemon.pokemonDetails?.abilities.split(",").length ??
                                    0,
                                (index) => Text(
                                      "\u2022 ${pokemonBloc.pokemon.pokemonDetails?.abilities.split(",")[index]}",
                                      style: GoogleFonts.sofiaSans(
                                          color: Theme.of(context).colorScheme.shadow,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                height(50)
              ],
            ),
          )
        ],
      ),
    );
  }
}
