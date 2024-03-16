import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task/presentation/bloc/pokemon_bloc.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/grediant_detail_view.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/tab_view/common_top_view.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/title_view.dart';
import 'package:test_task/utils/common_spacer.dart';

class SimilarTabView extends StatelessWidget {
  const SimilarTabView({super.key});

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
                  title: "Similar",
                ),
                GradiantDetailsView(
                  child: ListView.builder(
                    itemCount: pokemonBloc.pokemon.similar?.length ?? 0,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(top: 55),
                                alignment: Alignment.center,
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(26),
                                      color: Theme.of(context).colorScheme.background),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height * 0.18,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Theme.of(context).colorScheme.onSecondary),
                                        ),
                                        height(20),
                                        Text(
                                          pokemonBloc.pokemon.similar?[index].pokemonName ?? "-",
                                          style: GoogleFonts.sofiaSans(
                                              color: Theme.of(context).colorScheme.shadow,
                                              fontSize: 26,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: SvgPicture.asset(
                                      pokemonBloc.pokemon.similar?[index].pokemonImg ?? "-",
                                      height: MediaQuery.of(context).size.height * 0.24,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      );
                    },
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
