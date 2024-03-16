import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task/domain/model/pokemon_details_data/pokemon_model.dart';

part 'pokemon_data.freezed.dart';
part 'pokemon_data.g.dart';

@Freezed()
class PokemonData with _$PokemonData {
  const factory PokemonData({required List<Pokemon> pokemon}) = _PokemonData;

  factory PokemonData.fromJson(Map<String, dynamic> json) => _$PokemonDataFromJson(json);
}
