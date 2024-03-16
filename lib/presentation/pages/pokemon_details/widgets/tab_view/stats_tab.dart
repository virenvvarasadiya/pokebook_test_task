import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task/presentation/bloc/pokemon_bloc.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/custom_divider.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/grediant_detail_view.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/tab_view/common_top_view.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/title_view.dart';
import 'package:test_task/utils/Theme/app_color.dart';
import 'package:test_task/utils/common_spacer.dart';

class StatsTabView extends StatelessWidget {
  const StatsTabView({super.key});

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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                "HP",
                                style: GoogleFonts.sofiaSans(
                                    color: Theme.of(context).colorScheme.shadow,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                    child: Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 20),
                                  height: 9,
                                  width: 50,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: pokemonBloc.pokemon.pokemonDetails?.hp ?? 50,
                                          child: Container(
                                            color: Theme.of(context).colorScheme.primary,
                                          )),
                                      Expanded(
                                          flex:
                                              100 - (pokemonBloc.pokemon.pokemonDetails?.hp ?? 50),
                                          child: Container(
                                            color: AppColor.greyGradiant,
                                          ))
                                    ],
                                  ),
                                )),
                                Text(
                                  "${pokemonBloc.pokemon.pokemonDetails?.hp}",
                                  style: GoogleFonts.sofiaSans(
                                      color: Theme.of(context).colorScheme.shadow,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ))
                          ],
                        ),
                        const CustomDivider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                "Attack",
                                style: GoogleFonts.sofiaSans(
                                    color: Theme.of(context).colorScheme.shadow,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                    child: Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 20),
                                  height: 9,
                                  width: 50,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: pokemonBloc.pokemon.pokemonDetails?.attack ?? 50,
                                          child: Container(
                                            color: Theme.of(context).colorScheme.primary,
                                          )),
                                      Expanded(
                                          flex: 100 -
                                              (pokemonBloc.pokemon.pokemonDetails?.attack ?? 50),
                                          child: Container(
                                            color: AppColor.greyGradiant,
                                          ))
                                    ],
                                  ),
                                )),
                                Text(
                                  "${pokemonBloc.pokemon.pokemonDetails?.attack}",
                                  style: GoogleFonts.sofiaSans(
                                      color: Theme.of(context).colorScheme.shadow,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ))
                          ],
                        ),
                        const CustomDivider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                "Defence",
                                style: GoogleFonts.sofiaSans(
                                    color: Theme.of(context).colorScheme.shadow,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                    child: Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 20),
                                  height: 9,
                                  width: 50,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: pokemonBloc.pokemon.pokemonDetails?.defence ?? 50,
                                          child: Container(
                                            color: Theme.of(context).colorScheme.primary,
                                          )),
                                      Expanded(
                                          flex: 100 -
                                              (pokemonBloc.pokemon.pokemonDetails?.defence ?? 50),
                                          child: Container(
                                            color: AppColor.greyGradiant,
                                          ))
                                    ],
                                  ),
                                )),
                                Text(
                                  "${pokemonBloc.pokemon.pokemonDetails?.defence}",
                                  style: GoogleFonts.sofiaSans(
                                      color: Theme.of(context).colorScheme.shadow,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ))
                          ],
                        ),
                      ],
                    ),
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
