// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_notes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $myNotesRoute,
    ];

RouteBase get $myNotesRoute => GoRouteData.$route(
      path: '/notes',
      name: 'notes',
      factory: _$MyNotesRoute._fromState,
    );

mixin _$MyNotesRoute on GoRouteData {
  static MyNotesRoute _fromState(GoRouterState state) => MyNotesRoute();

  @override
  String get location => GoRouteData.$location(
        '/notes',
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
