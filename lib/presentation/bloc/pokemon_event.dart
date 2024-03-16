part of 'pokemon_bloc.dart';

@immutable
abstract class PokemonEvent {}

class GetPokemonEvent extends PokemonEvent {}

class FetchPokemonDataEvent extends PokemonEvent {
  final Pokemon pokemon;

  FetchPokemonDataEvent(this.pokemon);
}

class PaginatePokemonDataEvent extends PokemonEvent {
  final int pageIndex;

  PaginatePokemonDataEvent(this.pageIndex);
}

class ChangeAppThemeEvent extends PokemonEvent {
  final Color color;

  ChangeAppThemeEvent(this.color);
}
