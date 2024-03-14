import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task/generated/assets.dart';
import 'package:test_task/presentation/pages/pokemon_list_view/widgets/theme_picker_dialog.dart';
import 'package:test_task/utils/app_strings.dart';
import 'package:test_task/utils/common_spacer.dart';

class PokemonListTopView extends StatelessWidget {
  const PokemonListTopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0,left: 15,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(Assets.pokemonImgHomeIcon,width: 114,height: 75,),
          width(8),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text.rich(TextSpan(children: <InlineSpan>[
              TextSpan(
                text: AppStrings.pokeText,
                style: GoogleFonts.sofiaSans(
                    color: Theme.of(context).colorScheme.shadow,
                    fontSize: 21,
                    fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text: AppStrings.book,
                style: GoogleFonts.sofiaSans(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 21,
                    fontWeight: FontWeight.w700),
              )
            ])),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: InkWell(
              onTap: () {
                showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => const ThemePickerDialog());
              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 42,
                width: 42,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Theme.of(context).colorScheme.shadow),
                    color: Theme.of(context).colorScheme.background
                ),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
