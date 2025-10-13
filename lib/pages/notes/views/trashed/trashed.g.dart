// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trashed.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $trashedRoute,
    ];

RouteBase get $trashedRoute => GoRouteData.$route(
      path: '/notes/trashed',
      name: 'trashed',
      factory: _$TrashedRoute._fromState,
    );

mixin _$TrashedRoute on GoRouteData {
  static TrashedRoute _fromState(GoRouterState state) => TrashedRoute();

  @override
  String get location => GoRouteData.$location(
        '/notes/trashed',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
