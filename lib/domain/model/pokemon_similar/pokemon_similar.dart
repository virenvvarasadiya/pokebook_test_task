import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_similar.freezed.dart';
part 'pokemon_similar.g.dart';

@Freezed()
class PokemonSimilar with _$PokemonSimilar {
  const factory PokemonSimilar({required String pokemonName, required String pokemonImg}) =
      _PokemonSimilars;

  factory PokemonSimilar.fromJson(Map<String, dynamic> json) => _$PokemonSimilarFromJson(json);
}
