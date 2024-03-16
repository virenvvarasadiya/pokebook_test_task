import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_task/generated/assets.dart';
import 'package:test_task/presentation/pages/pokemon_list_view/widgets/bottom_pagination_view.dart';
import 'package:test_task/presentation/pages/pokemon_list_view/widgets/pokemon_card.dart';
import 'package:test_task/presentation/pages/pokemon_list_view/widgets/pokemon_list_search_widget.dart';
import 'package:test_task/utils/common_spacer.dart';

class PokemonListWidget extends StatelessWidget {
  const PokemonListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0),
      child: Stack(
        children: [
          backgroundImage(context),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                height(MediaQuery.of(context).size.height * 0.05),
                const PokemonListingSearchWidget(),
                const Expanded(child: PokemonCard()),
                const BottomPaginationView()
              ],
            ),
          )
        ],
      ),
    );
  }

  backgroundImage(context) {
    return Image.asset(
      Assets.pokemonImgPokemonBg,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.87,
      fit: BoxFit.cover,
    );
  }
}
