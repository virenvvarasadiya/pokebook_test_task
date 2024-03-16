import 'package:test_task/domain/model/pokemon_details_data/pokemon_model.dart';
import 'package:test_task/domain/repository/pokemon_repository.dart';

class GetPokemonUseCase {
  final PokemonRepository repository;

  GetPokemonUseCase(this.repository);

  Future<List<Pokemon>> execute() {
    return repository.gettingPokemon();
  }
}
