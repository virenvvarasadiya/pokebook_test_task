import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:test_task/domain/model/pokemon/pokemon_data.dart';
import 'package:test_task/domain/model/pokemon_details_data/pokemon_model.dart';

class PokemonDataSource {
  Future<List<Pokemon>> getPokemonData() async {
    String assetsPath = "assets/json_data/pokemon_data.json";
    Map<String, dynamic> json =
        await rootBundle.loadString(assetsPath).then((jsonStr) => jsonDecode(jsonStr));
    PokemonData pokemonData = PokemonData.fromJson(json);

    return pokemonData.pokemon;
  }
}
