// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDataImpl _$$PokemonDataImplFromJson(Map<String, dynamic> json) => _$PokemonDataImpl(
      pokemon: (json['pokemon'] as List<dynamic>)
          .map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonDataImplToJson(_$PokemonDataImpl instance) => <String, dynamic>{
      'pokemon': instance.pokemon,
    };
