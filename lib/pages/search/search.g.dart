// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $searchRoute,
    ];

RouteBase get $searchRoute => GoRouteData.$route(
      path: '/search',
      name: 'search',
      factory: _$SearchRoute._fromState,
    );

mixin _$SearchRoute on GoRouteData {
  static SearchRoute _fromState(GoRouterState state) => SearchRoute();

  @override
  String get location => GoRouteData.$location(
        '/search',
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
