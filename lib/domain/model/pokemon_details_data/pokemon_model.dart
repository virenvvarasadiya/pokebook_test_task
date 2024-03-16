import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task/domain/model/pokemon_details/pokemon_details.dart';
import 'package:test_task/domain/model/pokemon_similar/pokemon_similar.dart';
import 'package:test_task/domain/model/pokemon_tags/pokemon_tag.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@Freezed()
class Pokemon with _$Pokemon {
  const factory Pokemon(
      {String? pokemonName,
      String? pokemonImg,
      List<PokemonTags>? pokemonTags,
      PokemonDetails? pokemonDetails,
      List<PokemonSimilar>? similar}) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) => _$PokemonFromJson(json);
}
