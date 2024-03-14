part of 'pokemon_bloc.dart';

@immutable
abstract class PokemonState {}

class PokemonInitial extends PokemonState {}

class PokemonLoading extends PokemonState {}

class PokemonLoadFailure extends PokemonState {
  final String errorMessage;

  PokemonLoadFailure(this.errorMessage);
}

class PokemonLoadSuccess extends PokemonState {
  final List<Pokemon> pokemon;

  PokemonLoadSuccess(this.pokemon);
}

class ThemeLoadSuccess extends PokemonState {
  final ThemeData themeData;

  ThemeLoadSuccess(this.themeData);
}
class FetchSelectedDataLoadSuccess extends PokemonState {}
