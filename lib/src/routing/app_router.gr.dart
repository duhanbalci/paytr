// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i7;
import 'package:paytr_test_case/src/constants/resources.dart' as _i6;
import 'package:paytr_test_case/src/features/detail/presentation/detail_list_screen.dart'
    as _i1;
import 'package:paytr_test_case/src/features/detail/presentation/detail_screen.dart'
    as _i2;
import 'package:paytr_test_case/src/features/home/presentation/home_screen.dart'
    as _i3;
import 'package:paytr_test_case/src/features/onboarding/presentation/onboarding_screen.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DetailListRoute.name: (routeData) {
      final args = routeData.argsAs<DetailListRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DetailListScreen(
          resource: args.resource,
          key: args.key,
        ),
      );
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailScreen(
          resource: args.resource,
          id: args.id,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.OnboardingScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.DetailListScreen]
class DetailListRoute extends _i5.PageRouteInfo<DetailListRouteArgs> {
  DetailListRoute({
    required _i6.Resource resource,
    _i7.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          DetailListRoute.name,
          args: DetailListRouteArgs(
            resource: resource,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailListRoute';

  static const _i5.PageInfo<DetailListRouteArgs> page =
      _i5.PageInfo<DetailListRouteArgs>(name);
}

class DetailListRouteArgs {
  const DetailListRouteArgs({
    required this.resource,
    this.key,
  });

  final _i6.Resource resource;

  final _i7.Key? key;

  @override
  String toString() {
    return 'DetailListRouteArgs{resource: $resource, key: $key}';
  }
}

/// generated route for
/// [_i2.DetailScreen]
class DetailRoute extends _i5.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    required _i6.Resource resource,
    required dynamic id,
    _i7.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            resource: resource,
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const _i5.PageInfo<DetailRouteArgs> page =
      _i5.PageInfo<DetailRouteArgs>(name);
}

class DetailRouteArgs {
  const DetailRouteArgs({
    required this.resource,
    required this.id,
    this.key,
  });

  final _i6.Resource resource;

  final dynamic id;

  final _i7.Key? key;

  @override
  String toString() {
    return 'DetailRouteArgs{resource: $resource, id: $id, key: $key}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.OnboardingScreen]
class OnboardingRoute extends _i5.PageRouteInfo<void> {
  const OnboardingRoute({List<_i5.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
