import 'package:auto_route/auto_route.dart';
import 'package:test_task/presentation/pages/home_view/pokemon_home_view.dart';
import 'package:test_task/presentation/pages/pokemon_list_view/pokemon_list_view.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: PokemonHomeViewRoute.page,initial: true),
    AutoRoute(page: PokemonListViewRoute.page),
  ];
}