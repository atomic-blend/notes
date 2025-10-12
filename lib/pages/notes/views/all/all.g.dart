// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $allRoute,
    ];

RouteBase get $allRoute => GoRouteData.$route(
      path: '/notes/all',
      name: 'all',
      factory: _$AllRoute._fromState,
    );

mixin _$AllRoute on GoRouteData {
  static AllRoute _fromState(GoRouterState state) => AllRoute();

  @override
  String get location => GoRouteData.$location(
        '/notes/all',
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
