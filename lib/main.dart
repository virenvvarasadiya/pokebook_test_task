import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/data/datasources/pokemon_datasource.dart';
import 'package:test_task/domain/repository/pokemon_repository.dart';
import 'package:test_task/domain/usecases/fetching_usercases.dart';
import 'package:test_task/presentation/bloc/pokemon_bloc.dart';
import 'package:test_task/route/app_router.dart';
import 'package:test_task/utils/Theme/pink_theme.dart';

import 'data/repository_impl/pokemon_repository_impl.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final PokemonDataSource pokemonDataSource = PokemonDataSource();
  final PokemonRepository pokemonRepository = PokemonRepositoryImpl(pokemonDataSource);
  runApp(MyApp(
    pokemonRepository: pokemonRepository,
  ));
}

class MyApp extends StatelessWidget {
  final PokemonRepository? pokemonRepository;

  MyApp({super.key, this.pokemonRepository});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    ThemeData? theme = PinkTheme().pinkTheme;
    return MultiBlocProvider(
      providers: [
        BlocProvider<PokemonBloc>(
          create: (BuildContext context) => PokemonBloc(
            GetPokemonUseCase(pokemonRepository!),
          )..add(GetPokemonEvent()),
        ),
      ],
      child: BlocBuilder<PokemonBloc, PokemonState>(
        builder: (context, state) {
          if (state is ThemeLoadSuccess) {
            print("Theme is :: :${state.themeData}");
            theme = state.themeData;
            context.read<PokemonBloc>().add(GetPokemonEvent());
          }
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Task Manager',
            themeMode: ThemeMode.light,
            theme: theme,
            routerConfig: appRouter.config(),
          );
        },
      ),
    );
  }
}
