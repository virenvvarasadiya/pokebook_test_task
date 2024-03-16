// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    PokemonDetailsViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PokemonDetailsViewScreen(),
      );
    },
    PokemonHomeViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PokemonHomeViewScreen(),
      );
    },
    PokemonListViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PokemonListViewScreen(),
      );
    },
  };
}

/// generated route for
/// [PokemonDetailsViewScreen]
class PokemonDetailsViewRoute extends PageRouteInfo<void> {
  const PokemonDetailsViewRoute({List<PageRouteInfo>? children})
      : super(
          PokemonDetailsViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'PokemonDetailsViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PokemonHomeViewScreen]
class PokemonHomeViewRoute extends PageRouteInfo<void> {
  const PokemonHomeViewRoute({List<PageRouteInfo>? children})
      : super(
          PokemonHomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'PokemonHomeViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PokemonListViewScreen]
class PokemonListViewRoute extends PageRouteInfo<void> {
  const PokemonListViewRoute({List<PageRouteInfo>? children})
      : super(
          PokemonListViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'PokemonListViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
