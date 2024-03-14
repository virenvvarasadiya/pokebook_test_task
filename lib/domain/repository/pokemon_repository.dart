import 'package:test_task/domain/model/pokemon_details_data/pokemon_model.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> gettingPokemon();
}
