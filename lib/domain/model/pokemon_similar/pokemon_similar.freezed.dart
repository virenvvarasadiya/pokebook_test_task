// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_similar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSimilar _$PokemonSimilarFromJson(Map<String, dynamic> json) {
  return _PokemonSimilars.fromJson(json);
}

/// @nodoc
mixin _$PokemonSimilar {
  String get pokemonName => throw _privateConstructorUsedError;
  String get pokemonImg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSimilarCopyWith<PokemonSimilar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSimilarCopyWith<$Res> {
  factory $PokemonSimilarCopyWith(
          PokemonSimilar value, $Res Function(PokemonSimilar) then) =
      _$PokemonSimilarCopyWithImpl<$Res, PokemonSimilar>;
  @useResult
  $Res call({String pokemonName, String pokemonImg});
}

/// @nodoc
class _$PokemonSimilarCopyWithImpl<$Res, $Val extends PokemonSimilar>
    implements $PokemonSimilarCopyWith<$Res> {
  _$PokemonSimilarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonName = null,
    Object? pokemonImg = null,
  }) {
    return _then(_value.copyWith(
      pokemonName: null == pokemonName
          ? _value.pokemonName
          : pokemonName // ignore: cast_nullable_to_non_nullable
              as String,
      pokemonImg: null == pokemonImg
          ? _value.pokemonImg
          : pokemonImg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSimilarsImplCopyWith<$Res>
    implements $PokemonSimilarCopyWith<$Res> {
  factory _$$PokemonSimilarsImplCopyWith(_$PokemonSimilarsImpl value,
          $Res Function(_$PokemonSimilarsImpl) then) =
      __$$PokemonSimilarsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pokemonName, String pokemonImg});
}

/// @nodoc
class __$$PokemonSimilarsImplCopyWithImpl<$Res>
    extends _$PokemonSimilarCopyWithImpl<$Res, _$PokemonSimilarsImpl>
    implements _$$PokemonSimilarsImplCopyWith<$Res> {
  __$$PokemonSimilarsImplCopyWithImpl(
      _$PokemonSimilarsImpl _value, $Res Function(_$PokemonSimilarsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonName = null,
    Object? pokemonImg = null,
  }) {
    return _then(_$PokemonSimilarsImpl(
      pokemonName: null == pokemonName
          ? _value.pokemonName
          : pokemonName // ignore: cast_nullable_to_non_nullable
              as String,
      pokemonImg: null == pokemonImg
          ? _value.pokemonImg
          : pokemonImg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSimilarsImpl implements _PokemonSimilars {
  const _$PokemonSimilarsImpl(
      {required this.pokemonName, required this.pokemonImg});

  factory _$PokemonSimilarsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSimilarsImplFromJson(json);

  @override
  final String pokemonName;
  @override
  final String pokemonImg;

  @override
  String toString() {
    return 'PokemonSimilar(pokemonName: $pokemonName, pokemonImg: $pokemonImg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSimilarsImpl &&
            (identical(other.pokemonName, pokemonName) ||
                other.pokemonName == pokemonName) &&
            (identical(other.pokemonImg, pokemonImg) ||
                other.pokemonImg == pokemonImg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pokemonName, pokemonImg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSimilarsImplCopyWith<_$PokemonSimilarsImpl> get copyWith =>
      __$$PokemonSimilarsImplCopyWithImpl<_$PokemonSimilarsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSimilarsImplToJson(
      this,
    );
  }
}

abstract class _PokemonSimilars implements PokemonSimilar {
  const factory _PokemonSimilars(
      {required final String pokemonName,
      required final String pokemonImg}) = _$PokemonSimilarsImpl;

  factory _PokemonSimilars.fromJson(Map<String, dynamic> json) =
      _$PokemonSimilarsImpl.fromJson;

  @override
  String get pokemonName;
  @override
  String get pokemonImg;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSimilarsImplCopyWith<_$PokemonSimilarsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
