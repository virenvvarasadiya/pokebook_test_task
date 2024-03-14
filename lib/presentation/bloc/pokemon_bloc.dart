import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:test_task/domain/model/pokemon_details_data/pokemon_model.dart';
import 'package:test_task/domain/usecases/fetching_usercases.dart';
import 'package:test_task/utils/Theme/blue_theme.dart';
import 'package:test_task/utils/Theme/pink_theme.dart';
import 'package:test_task/utils/Theme/yellow_theme.dart';

part 'pokemon_event.dart';

part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final GetPokemonUseCase getPokemonUseCase;

  PokemonBloc(this.getPokemonUseCase) : super(PokemonInitial()) {
    on<GetPokemonEvent>(onGetPokemonEvent);
    on<FetchPokemonDataEvent>(onFetchPokemonData);
    on<ChangeAppThemeEvent>(onChangeAppTheme);
  }

  TabController? tabController;

  List<Color> colorList = [
    const Color(0xFFe95d89),
    const Color(0xFF40b9db),
    const Color(0xFFdca62c)
  ];
  Color selectedColor = const Color(0xFFe95d89);

  Pokemon pokemon = const Pokemon();

  Future onGetPokemonEvent(GetPokemonEvent event, Emitter<PokemonState> emit) async {
    try {
      emit(PokemonLoading());
      List<Pokemon> pokemonList = await getPokemonUseCase.execute();

      emit(PokemonLoadSuccess(pokemonList));
    } catch (e) {
      emit(PokemonLoadFailure('Failed to load pokemon: $e'));
    }
  }

  onFetchPokemonData(FetchPokemonDataEvent event, Emitter<PokemonState> emit){
    pokemon = event.pokemon;
  }

  onChangeAppTheme(ChangeAppThemeEvent event, Emitter<PokemonState> emit) async {
    selectedColor = event.color;
    ThemeData themeData = PinkTheme().pinkTheme!;
    if (event.color == colorList[0]) {
      themeData = PinkTheme().pinkTheme!;
    } else if (event.color == colorList[1]) {
      themeData = BlueTheme().blueTheme!;
    } else if (event.color == colorList[2]) {
      themeData = YellowTheme().yellowTheme!;
    }
    emit(ThemeLoadSuccess(themeData));
  }
}
