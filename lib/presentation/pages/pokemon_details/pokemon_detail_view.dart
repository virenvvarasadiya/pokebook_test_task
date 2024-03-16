import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/presentation/bloc/pokemon_bloc.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/bottom_tab_bar.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/pokeom_detail_top_view.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/tab_view/about_tab.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/tab_view/similar_tab.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/tab_view/stats_tab.dart';

@RoutePage()
class PokemonDetailsViewScreen extends StatefulWidget {
  const PokemonDetailsViewScreen({super.key});

  @override
  State<PokemonDetailsViewScreen> createState() => _PokemonDetailsViewScreenState();
}

class _PokemonDetailsViewScreenState extends State<PokemonDetailsViewScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    final pokemonBloc = context.read<PokemonBloc>();
    pokemonBloc.tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pokemonBloc = context.read<PokemonBloc>();
    return Scaffold(
      body: Column(
        children: [
          const PokemonDetailsTopView(),
          Expanded(
            child: TabBarView(
              controller: pokemonBloc.tabController,
              children: const [AboutTabView(), StatsTabView(), SimilarTabView()],
            ),
          ),
          const BottomTabView()
        ],
      ),
    );
  }
}
