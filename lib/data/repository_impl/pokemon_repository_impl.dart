import 'package:test_task/data/datasources/pokemon_datasource.dart';
import 'package:test_task/domain/model/pokemon_details_data/pokemon_model.dart';
import 'package:test_task/domain/repository/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonDataSource dataSource;

  PokemonRepositoryImpl(this.dataSource);

  @override
  Future<List<Pokemon>> gettingPokemon() {
    return dataSource.getPokemonData();
  }
}
