// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonDetails _$PokemonDetailsFromJson(Map<String, dynamic> json) {
  return _PokemonDetails.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetails {
  String get height => throw _privateConstructorUsedError;

  String get weight => throw _privateConstructorUsedError;

  String get abilities => throw _privateConstructorUsedError;

  int get hp => throw _privateConstructorUsedError;

  int get attack => throw _privateConstructorUsedError;

  int get defence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonDetailsCopyWith<PokemonDetails> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailsCopyWith<$Res> {
  factory $PokemonDetailsCopyWith(PokemonDetails value, $Res Function(PokemonDetails) then) =
      _$PokemonDetailsCopyWithImpl<$Res, PokemonDetails>;

  @useResult
  $Res call({String height, String weight, String abilities, int hp, int attack, int defence});
}

/// @nodoc
class _$PokemonDetailsCopyWithImpl<$Res, $Val extends PokemonDetails>
    implements $PokemonDetailsCopyWith<$Res> {
  _$PokemonDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? weight = null,
    Object? abilities = null,
    Object? hp = null,
    Object? attack = null,
    Object? defence = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as String,
      hp: null == hp
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as int,
      attack: null == attack
          ? _value.attack
          : attack // ignore: cast_nullable_to_non_nullable
              as int,
      defence: null == defence
          ? _value.defence
          : defence // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonDetailsImplCopyWith<$Res> implements $PokemonDetailsCopyWith<$Res> {
  factory _$$PokemonDetailsImplCopyWith(
          _$PokemonDetailsImpl value, $Res Function(_$PokemonDetailsImpl) then) =
      __$$PokemonDetailsImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String height, String weight, String abilities, int hp, int attack, int defence});
}

/// @nodoc
class __$$PokemonDetailsImplCopyWithImpl<$Res>
    extends _$PokemonDetailsCopyWithImpl<$Res, _$PokemonDetailsImpl>
    implements _$$PokemonDetailsImplCopyWith<$Res> {
  __$$PokemonDetailsImplCopyWithImpl(
      _$PokemonDetailsImpl _value, $Res Function(_$PokemonDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? weight = null,
    Object? abilities = null,
    Object? hp = null,
    Object? attack = null,
    Object? defence = null,
  }) {
    return _then(_$PokemonDetailsImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as String,
      hp: null == hp
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as int,
      attack: null == attack
          ? _value.attack
          : attack // ignore: cast_nullable_to_non_nullable
              as int,
      defence: null == defence
          ? _value.defence
          : defence // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDetailsImpl implements _PokemonDetails {
  const _$PokemonDetailsImpl(
      {required this.height,
      required this.weight,
      required this.abilities,
      required this.hp,
      required this.attack,
      required this.defence});

  factory _$PokemonDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDetailsImplFromJson(json);

  @override
  final String height;
  @override
  final String weight;
  @override
  final String abilities;
  @override
  final int hp;
  @override
  final int attack;
  @override
  final int defence;

  @override
  String toString() {
    return 'PokemonDetails(height: $height, weight: $weight, abilities: $abilities, hp: $hp, attack: $attack, defence: $defence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailsImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.abilities, abilities) || other.abilities == abilities) &&
            (identical(other.hp, hp) || other.hp == hp) &&
            (identical(other.attack, attack) || other.attack == attack) &&
            (identical(other.defence, defence) || other.defence == defence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, weight, abilities, hp, attack, defence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailsImplCopyWith<_$PokemonDetailsImpl> get copyWith =>
      __$$PokemonDetailsImplCopyWithImpl<_$PokemonDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDetailsImplToJson(
      this,
    );
  }
}

abstract class _PokemonDetails implements PokemonDetails {
  const factory _PokemonDetails(
      {required final String height,
      required final String weight,
      required final String abilities,
      required final int hp,
      required final int attack,
      required final int defence}) = _$PokemonDetailsImpl;

  factory _PokemonDetails.fromJson(Map<String, dynamic> json) = _$PokemonDetailsImpl.fromJson;

  @override
  String get height;

  @override
  String get weight;

  @override
  String get abilities;

  @override
  int get hp;

  @override
  int get attack;

  @override
  int get defence;

  @override
  @JsonKey(ignore: true)
  _$$PokemonDetailsImplCopyWith<_$PokemonDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
