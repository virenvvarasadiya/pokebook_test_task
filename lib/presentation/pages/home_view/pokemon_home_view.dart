import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_task/generated/assets.dart';
import 'package:test_task/presentation/bloc/pokemon_bloc.dart';
import 'package:test_task/presentation/common/common_bg.dart';
import 'package:test_task/presentation/pages/home_view/widgets/search_home_widget.dart';
import 'package:test_task/route/app_router.dart';
import 'package:test_task/utils/app_strings.dart';
import 'package:test_task/utils/common_spacer.dart';

@RoutePage()
class PokemonHomeViewScreen extends StatefulWidget {
  const PokemonHomeViewScreen({super.key});

  @override
  State<PokemonHomeViewScreen> createState() => _PokemonHomeViewScreenState();
}

class _PokemonHomeViewScreenState extends State<PokemonHomeViewScreen> {
  @override
  void initState() {
    context.read<PokemonBloc>().add(GetPokemonEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CommonBg(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              height(MediaQuery.of(context).size.height * 0.15),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: SvgPicture.asset(Assets.pokemonImgHomeIcon),
                  )),
              height(20),
              Text.rich(TextSpan(children: <InlineSpan>[
                TextSpan(
                  text: '${AppStrings.poke}\t',
                  style: GoogleFonts.sofiaSans(
                      color: Theme.of(context).colorScheme.shadow,
                      fontSize: 48,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: AppStrings.book,
                  style: GoogleFonts.sofiaSans(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 48,
                      fontWeight: FontWeight.bold),
                )
              ])),
              height(5),
              Text(AppStrings.homeDes,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sofiaSans(
                    color: Theme.of(context).colorScheme.shadow,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  )),
              height(MediaQuery.of(context).size.height * 0.1),
              const SearchHomeWidget(),
              height(12),
              InkWell(
                onTap: () {
                  context.router.push(const PokemonListViewRoute());
                },
                borderRadius: BorderRadius.circular(5),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(AppStrings.viewAll,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.sofiaSans(
                        decoration: TextDecoration.underline,
                        decorationColor: Theme.of(context).colorScheme.shadow,
                        color: Theme.of(context).colorScheme.shadow,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
