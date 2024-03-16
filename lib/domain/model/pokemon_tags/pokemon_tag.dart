import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_tag.freezed.dart';
part 'pokemon_tag.g.dart';

@Freezed()
class PokemonTags with _$PokemonTags {
  const factory PokemonTags({required String tag}) = _PokemonTags;

  factory PokemonTags.fromJson(Map<String, dynamic> json) => _$PokemonTagsFromJson(json);
}
