
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_details.freezed.dart';
part 'pokemon_details.g.dart';

@Freezed()
class PokemonDetails with _$PokemonDetails {
  const factory PokemonDetails({
    required String height,
    required String weight,
    required String abilities,
    required int hp,
    required int attack,
    required int defence,
  }) = _PokemonDetails;

  factory PokemonDetails.fromJson(Map<String,dynamic> json) => _$PokemonDetailsFromJson(json);
}