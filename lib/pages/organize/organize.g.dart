// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organize.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $organizeRoute,
    ];

RouteBase get $organizeRoute => GoRouteData.$route(
      path: '/organize',
      name: 'organize',
      factory: _$OrganizeRoute._fromState,
    );

mixin _$OrganizeRoute on GoRouteData {
  static OrganizeRoute _fromState(GoRouterState state) => OrganizeRoute();

  @override
  String get location => GoRouteData.$location(
        '/organize',
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
