// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDetailsImpl _$$PokemonDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PokemonDetailsImpl(
      height: json['height'] as String,
      weight: json['weight'] as String,
      abilities: json['abilities'] as String,
      hp: json['hp'] as int,
      attack: json['attack'] as int,
      defence: json['defence'] as int,
    );

Map<String, dynamic> _$$PokemonDetailsImplToJson(
        _$PokemonDetailsImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'weight': instance.weight,
      'abilities': instance.abilities,
      'hp': instance.hp,
      'attack': instance.attack,
      'defence': instance.defence,
    };
