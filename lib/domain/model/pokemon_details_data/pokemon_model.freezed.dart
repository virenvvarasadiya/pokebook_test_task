// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
mixin _$Pokemon {
  String? get pokemonName => throw _privateConstructorUsedError;
  String? get pokemonImg => throw _privateConstructorUsedError;
  List<PokemonTags>? get pokemonTags => throw _privateConstructorUsedError;
  PokemonDetails? get pokemonDetails => throw _privateConstructorUsedError;
  List<PokemonSimilar>? get similar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call(
      {String? pokemonName,
      String? pokemonImg,
      List<PokemonTags>? pokemonTags,
      PokemonDetails? pokemonDetails,
      List<PokemonSimilar>? similar});

  $PokemonDetailsCopyWith<$Res>? get pokemonDetails;
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonName = freezed,
    Object? pokemonImg = freezed,
    Object? pokemonTags = freezed,
    Object? pokemonDetails = freezed,
    Object? similar = freezed,
  }) {
    return _then(_value.copyWith(
      pokemonName: freezed == pokemonName
          ? _value.pokemonName
          : pokemonName // ignore: cast_nullable_to_non_nullable
              as String?,
      pokemonImg: freezed == pokemonImg
          ? _value.pokemonImg
          : pokemonImg // ignore: cast_nullable_to_non_nullable
              as String?,
      pokemonTags: freezed == pokemonTags
          ? _value.pokemonTags
          : pokemonTags // ignore: cast_nullable_to_non_nullable
              as List<PokemonTags>?,
      pokemonDetails: freezed == pokemonDetails
          ? _value.pokemonDetails
          : pokemonDetails // ignore: cast_nullable_to_non_nullable
              as PokemonDetails?,
      similar: freezed == similar
          ? _value.similar
          : similar // ignore: cast_nullable_to_non_nullable
              as List<PokemonSimilar>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonDetailsCopyWith<$Res>? get pokemonDetails {
    if (_value.pokemonDetails == null) {
      return null;
    }

    return $PokemonDetailsCopyWith<$Res>(_value.pokemonDetails!, (value) {
      return _then(_value.copyWith(pokemonDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonImplCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$PokemonImplCopyWith(
          _$PokemonImpl value, $Res Function(_$PokemonImpl) then) =
      __$$PokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? pokemonName,
      String? pokemonImg,
      List<PokemonTags>? pokemonTags,
      PokemonDetails? pokemonDetails,
      List<PokemonSimilar>? similar});

  @override
  $PokemonDetailsCopyWith<$Res>? get pokemonDetails;
}

/// @nodoc
class __$$PokemonImplCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$PokemonImpl>
    implements _$$PokemonImplCopyWith<$Res> {
  __$$PokemonImplCopyWithImpl(
      _$PokemonImpl _value, $Res Function(_$PokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonName = freezed,
    Object? pokemonImg = freezed,
    Object? pokemonTags = freezed,
    Object? pokemonDetails = freezed,
    Object? similar = freezed,
  }) {
    return _then(_$PokemonImpl(
      pokemonName: freezed == pokemonName
          ? _value.pokemonName
          : pokemonName // ignore: cast_nullable_to_non_nullable
              as String?,
      pokemonImg: freezed == pokemonImg
          ? _value.pokemonImg
          : pokemonImg // ignore: cast_nullable_to_non_nullable
              as String?,
      pokemonTags: freezed == pokemonTags
          ? _value._pokemonTags
          : pokemonTags // ignore: cast_nullable_to_non_nullable
              as List<PokemonTags>?,
      pokemonDetails: freezed == pokemonDetails
          ? _value.pokemonDetails
          : pokemonDetails // ignore: cast_nullable_to_non_nullable
              as PokemonDetails?,
      similar: freezed == similar
          ? _value._similar
          : similar // ignore: cast_nullable_to_non_nullable
              as List<PokemonSimilar>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonImpl implements _Pokemon {
  const _$PokemonImpl(
      {this.pokemonName,
      this.pokemonImg,
      final List<PokemonTags>? pokemonTags,
      this.pokemonDetails,
      final List<PokemonSimilar>? similar})
      : _pokemonTags = pokemonTags,
        _similar = similar;

  factory _$PokemonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonImplFromJson(json);

  @override
  final String? pokemonName;
  @override
  final String? pokemonImg;
  final List<PokemonTags>? _pokemonTags;
  @override
  List<PokemonTags>? get pokemonTags {
    final value = _pokemonTags;
    if (value == null) return null;
    if (_pokemonTags is EqualUnmodifiableListView) return _pokemonTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PokemonDetails? pokemonDetails;
  final List<PokemonSimilar>? _similar;
  @override
  List<PokemonSimilar>? get similar {
    final value = _similar;
    if (value == null) return null;
    if (_similar is EqualUnmodifiableListView) return _similar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Pokemon(pokemonName: $pokemonName, pokemonImg: $pokemonImg, pokemonTags: $pokemonTags, pokemonDetails: $pokemonDetails, similar: $similar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonImpl &&
            (identical(other.pokemonName, pokemonName) ||
                other.pokemonName == pokemonName) &&
            (identical(other.pokemonImg, pokemonImg) ||
                other.pokemonImg == pokemonImg) &&
            const DeepCollectionEquality()
                .equals(other._pokemonTags, _pokemonTags) &&
            (identical(other.pokemonDetails, pokemonDetails) ||
                other.pokemonDetails == pokemonDetails) &&
            const DeepCollectionEquality().equals(other._similar, _similar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pokemonName,
      pokemonImg,
      const DeepCollectionEquality().hash(_pokemonTags),
      pokemonDetails,
      const DeepCollectionEquality().hash(_similar));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      __$$PokemonImplCopyWithImpl<_$PokemonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonImplToJson(
      this,
    );
  }
}

abstract class _Pokemon implements Pokemon {
  const factory _Pokemon(
      {final String? pokemonName,
      final String? pokemonImg,
      final List<PokemonTags>? pokemonTags,
      final PokemonDetails? pokemonDetails,
      final List<PokemonSimilar>? similar}) = _$PokemonImpl;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$PokemonImpl.fromJson;

  @override
  String? get pokemonName;
  @override
  String? get pokemonImg;
  @override
  List<PokemonTags>? get pokemonTags;
  @override
  PokemonDetails? get pokemonDetails;
  @override
  List<PokemonSimilar>? get similar;
  @override
  @JsonKey(ignore: true)
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
