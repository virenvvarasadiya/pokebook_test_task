import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/domain/model/pokemon_details_data/pokemon_model.dart';
import 'package:test_task/presentation/bloc/pokemon_bloc.dart';
import 'package:test_task/presentation/pages/pokemon_list_view/widgets/pokemon_card_widget.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
      builder: (context, state) {
        if (state is PokemonLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is PokemonLoadSuccess) {
          List<Pokemon> pokemonList = state.pokemon;
          return ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 10),
            itemCount: pokemonList.length,
            itemBuilder: (context, index) {
              return pokemonCard(context: context, pokemon: pokemonList[index]);
            },
          );
        }
        return Container();
      },
    );
  }
}
