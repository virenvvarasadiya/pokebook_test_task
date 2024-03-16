// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonData _$PokemonDataFromJson(Map<String, dynamic> json) {
  return _PokemonData.fromJson(json);
}

/// @nodoc
mixin _$PokemonData {
  List<Pokemon> get pokemon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonDataCopyWith<PokemonData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDataCopyWith<$Res> {
  factory $PokemonDataCopyWith(PokemonData value, $Res Function(PokemonData) then) =
      _$PokemonDataCopyWithImpl<$Res, PokemonData>;

  @useResult
  $Res call({List<Pokemon> pokemon});
}

/// @nodoc
class _$PokemonDataCopyWithImpl<$Res, $Val extends PokemonData>
    implements $PokemonDataCopyWith<$Res> {
  _$PokemonDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = null,
  }) {
    return _then(_value.copyWith(
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonDataImplCopyWith<$Res> implements $PokemonDataCopyWith<$Res> {
  factory _$$PokemonDataImplCopyWith(
          _$PokemonDataImpl value, $Res Function(_$PokemonDataImpl) then) =
      __$$PokemonDataImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({List<Pokemon> pokemon});
}

/// @nodoc
class __$$PokemonDataImplCopyWithImpl<$Res>
    extends _$PokemonDataCopyWithImpl<$Res, _$PokemonDataImpl>
    implements _$$PokemonDataImplCopyWith<$Res> {
  __$$PokemonDataImplCopyWithImpl(_$PokemonDataImpl _value, $Res Function(_$PokemonDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = null,
  }) {
    return _then(_$PokemonDataImpl(
      pokemon: null == pokemon
          ? _value._pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDataImpl implements _PokemonData {
  const _$PokemonDataImpl({required final List<Pokemon> pokemon}) : _pokemon = pokemon;

  factory _$PokemonDataImpl.fromJson(Map<String, dynamic> json) => _$$PokemonDataImplFromJson(json);

  final List<Pokemon> _pokemon;

  @override
  List<Pokemon> get pokemon {
    if (_pokemon is EqualUnmodifiableListView) return _pokemon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemon);
  }

  @override
  String toString() {
    return 'PokemonData(pokemon: $pokemon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDataImpl &&
            const DeepCollectionEquality().equals(other._pokemon, _pokemon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_pokemon));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDataImplCopyWith<_$PokemonDataImpl> get copyWith =>
      __$$PokemonDataImplCopyWithImpl<_$PokemonDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonData implements PokemonData {
  const factory _PokemonData({required final List<Pokemon> pokemon}) = _$PokemonDataImpl;

  factory _PokemonData.fromJson(Map<String, dynamic> json) = _$PokemonDataImpl.fromJson;

  @override
  List<Pokemon> get pokemon;

  @override
  @JsonKey(ignore: true)
  _$$PokemonDataImplCopyWith<_$PokemonDataImpl> get copyWith => throw _privateConstructorUsedError;
}
