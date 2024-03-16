import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/presentation/bloc/pokemon_bloc.dart';
import 'package:test_task/presentation/pages/pokemon_list_view/widgets/pagination_view/pagination.dart';

class BottomPaginationView extends StatelessWidget {
  const BottomPaginationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonBloc, PokemonState>(
      builder: (context, state) {
        final pokemonBloc = context.read<PokemonBloc>();
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Pagination(
                currentPage: pokemonBloc.currentPage,
                totalPage: pokemonBloc.totalPages,
                displayItemCount: 5,
                onPageChanged: (page) {
                  if (kDebugMode) {
                    print("Current page is ::: $page");
                  }
                },
                onWhichButtonTap: (pageIndex) {
                  context.read<PokemonBloc>().add(PaginatePokemonDataEvent(pageIndex));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
