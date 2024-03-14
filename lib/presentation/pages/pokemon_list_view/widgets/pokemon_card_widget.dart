import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task/domain/model/pokemon_details_data/pokemon_model.dart';
import 'package:test_task/utils/common_spacer.dart';

Widget pokemonCard({required BuildContext context, required Pokemon pokemon}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 55),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Theme.of(context).colorScheme.background),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                  height(20),
                  pokemonInfoView(context: context, pokemon: pokemon),
                  /*     InkWell(
                      onTap: () {
                        context.router.push(const PokemonDetailsViewRoute());
                      },
                      child: Icon(Icons.visibility))*/
                ],
              ),
            ),
          ),
        ),
        Align(alignment: Alignment.center, child: SvgPicture.asset(pokemon.pokemonImg ?? ""))
      ],
    ),
  );
}

Widget pokemonInfoView(
    {required BuildContext context,
    Pokemon? pokemon,
    double? fontSize,
    FontWeight? fontWeight,
    double? heightValue}) {
  return Column(
    children: [
      Text(
        pokemon?.pokemonName ?? "",
        style: GoogleFonts.sofiaSans(
            color: Theme.of(context).colorScheme.shadow,
            fontSize: fontSize ?? 32,
            fontWeight: fontWeight ?? FontWeight.w500),
      ),
      height(heightValue ?? 10),
      pokemon?.pokemonTags?.isNotEmpty ?? false
          ? Wrap(
              spacing: 8,
              children: List.generate(
                  pokemon?.pokemonTags?.length ?? 0,
                  (index) => Container(
                        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(52),
                            color: Theme.of(context).colorScheme.onSecondary),
                        child: Text(
                          pokemon?.pokemonTags?[index].tag ?? "",
                          style: GoogleFonts.sofiaSans(
                              color: Theme.of(context).colorScheme.shadow,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
            )
          : const SizedBox.shrink(),
      height(pokemon?.pokemonTags?.isNotEmpty ?? false ? 20 : 0),
    ],
  );
}
