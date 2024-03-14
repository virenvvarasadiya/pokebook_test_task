import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_task/presentation/pages/pokemon_list_view/widgets/pokemon_list_top_view.dart';
import 'package:test_task/presentation/pages/pokemon_list_view/widgets/pokemon_list_widget.dart';

@RoutePage()
class PokemonListViewScreen extends StatefulWidget {
  const PokemonListViewScreen({super.key});

  @override
  State<PokemonListViewScreen> createState() => _PokemonListViewScreenState();
}

class _PokemonListViewScreenState extends State<PokemonListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            PokemonListWidget(),
            PokemonListTopView(),
          ],
        ),
      ),
    );
  }
}
