import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task/generated/assets.dart';
import 'package:test_task/presentation/bloc/pokemon_bloc.dart';

class ThemePickerDialog extends StatelessWidget {
  const ThemePickerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        child: Stack(
          children: [
            Image.asset(
              Assets.pokemonImgPokemonBg,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.28,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            "Choose Theme",
                            style: GoogleFonts.sofiaSans(
                                color: Theme.of(context).colorScheme.shadow,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        BlocBuilder<PokemonBloc, PokemonState>(
                          builder: (context, state) {
                            final pokemonBloc = context.read<PokemonBloc>();
                            return Expanded(
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.shadow.withOpacity(0.1),
                                    borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(30),
                                        bottomLeft: Radius.circular(30))),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: MediaQuery.of(context).size.width * 0.1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                        pokemonBloc.colorList.length,
                                        (index) => Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.all(12.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    context.router.pop();
                                                    context.read<PokemonBloc>().add(
                                                        ChangeAppThemeEvent(
                                                            pokemonBloc.colorList[index]));
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets.all(3),
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            color: pokemonBloc.colorList[index] ==
                                                                    pokemonBloc.selectedColor
                                                                ? Theme.of(context)
                                                                    .colorScheme
                                                                    .shadow
                                                                : Colors.transparent),
                                                        color: Colors.transparent),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          color: pokemonBloc.colorList[index]),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )),
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
