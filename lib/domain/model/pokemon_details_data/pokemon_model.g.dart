// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImpl _$$PokemonImplFromJson(Map<String, dynamic> json) => _$PokemonImpl(
      pokemonName: json['pokemonName'] as String?,
      pokemonImg: json['pokemonImg'] as String?,
      pokemonTags: (json['pokemonTags'] as List<dynamic>?)
          ?.map((e) => PokemonTags.fromJson(e as Map<String, dynamic>))
          .toList(),
      pokemonDetails: json['pokemonDetails'] == null
          ? null
          : PokemonDetails.fromJson(json['pokemonDetails'] as Map<String, dynamic>),
      similar: (json['similar'] as List<dynamic>?)
          ?.map((e) => PokemonSimilar.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonImplToJson(_$PokemonImpl instance) => <String, dynamic>{
      'pokemonName': instance.pokemonName,
      'pokemonImg': instance.pokemonImg,
      'pokemonTags': instance.pokemonTags,
      'pokemonDetails': instance.pokemonDetails,
      'similar': instance.similar,
    };
