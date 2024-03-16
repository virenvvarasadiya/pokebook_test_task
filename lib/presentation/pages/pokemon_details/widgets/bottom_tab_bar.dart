import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/presentation/bloc/pokemon_bloc.dart';
import 'package:test_task/presentation/pages/pokemon_details/widgets/short_tab.dart';

class BottomTabView extends StatefulWidget {
  const BottomTabView({super.key});

  @override
  State<BottomTabView> createState() => _BottomTabViewState();
}

class _BottomTabViewState extends State<BottomTabView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
      builder: (context, state) {
        final pokemonBloc = context.read<PokemonBloc>();
        return Container(
          height: 83,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.shadow.withOpacity(0.09),
                blurRadius: 12.0, // soften the shadow
                spreadRadius: 3.0, //extend the shadow
                offset: const Offset(
                  0.5, // Move to right 10  horizontally
                  1.0, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.shadow.withOpacity(0.3),
                    blurRadius: 12.0, // soften the shadow
                    spreadRadius: -12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ],
                borderRadius: BorderRadius.circular(60),
                color: Theme.of(context).colorScheme.onBackground),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                controller: pokemonBloc.tabController,
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Theme.of(context).colorScheme.background),
                indicatorPadding: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  ShortTab(text: "About"),
                  ShortTab(text: "Stats"),
                  ShortTab(text: "Similar "),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
