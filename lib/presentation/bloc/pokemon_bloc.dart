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
    on<PaginatePokemonDataEvent>(getPaginateData);
  }

  TabController? tabController;

  List<Color> colorList = [
    const Color(0xFFe95d89),
    const Color(0xFF40b9db),
    const Color(0xFFdca62c)
  ];
  Color selectedColor = const Color(0xFFe95d89);
  int currentPage = 1;
  int totalPages = 1;

  Pokemon pokemon = Pokemon();

  List<Pokemon> pokemonFinalList = [];
  List<Pokemon> pokemonListData = [];

  Future onGetPokemonEvent(GetPokemonEvent event, Emitter<PokemonState> emit) async {
    try {
      emit(PokemonLoading());
      List<Pokemon> pokemonList = await getPokemonUseCase.execute();
      pokemonFinalList = pokemonList;
      pokemonListData = pokemonList;

      emit(PokemonLoadSuccess(null));
    } catch (e) {
      emit(PokemonLoadFailure('Failed to load pokemon: $e'));
    }
  }

  getPaginateData(PaginatePokemonDataEvent event, Emitter<PokemonState> emit) {
    try {
      emit(PokemonLoading());
      currentPage = event.pageIndex;
      final list = pokemonFinalList;
      int dataLength = list.length;
      int dataPerPage = 2;
      totalPages = dataLength ~/ dataPerPage;

      int startIndex = 0;
      int endIndex = 0;

      if (currentPage != 1) {
        startIndex = (currentPage - 1) * dataPerPage;
        endIndex = (currentPage) * dataPerPage;
        if (currentPage == totalPages) {
          endIndex = list.length;
        }
      } else {
        if (dataPerPage > (list.length)) {
          endIndex = list.length;
        } else {
          endIndex = (startIndex + 1) * dataPerPage;
        }
      }

      List<Pokemon> currentPageData = list.sublist(startIndex, endIndex);

      emit(PokemonLoadSuccess(currentPageData));
    } catch (e) {
      emit(PokemonLoadFailure('Failed to load pokemon: $e'));
    }
  }

  onFetchPokemonData(FetchPokemonDataEvent event, Emitter<PokemonState> emit) {
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
