// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appRouter,
    ];

RouteBase get $appRouter => ShellRouteData.$route(
      navigatorKey: AppRouter.$navigatorKey,
      factory: $AppRouterExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          name: 'home',
          factory: _$HomeRoute._fromState,
        ),
        GoRouteData.$route(
          path: '/notes/all',
          name: 'all',
          factory: _$AllRoute._fromState,
        ),
        GoRouteData.$route(
          path: '/organize',
          name: 'organize',
          factory: _$OrganizeRoute._fromState,
        ),
        GoRouteData.$route(
          path: '/search',
          name: 'search',
          factory: _$SearchRoute._fromState,
        ),
        GoRouteData.$route(
          path: '/account',
          name: 'account',
          factory: _$AccountRoute._fromState,
        ),
        GoRouteData.$route(
          path: '/settings',
          name: 'settings',
          factory: _$SettingsRoute._fromState,
        ),
      ],
    );

extension $AppRouterExtension on AppRouter {
  static AppRouter _fromState(GoRouterState state) => AppRouter();
}

mixin _$HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  @override
  String get location => GoRouteData.$location(
        '/',
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

mixin _$SearchRoute on GoRouteData {
  static SearchRoute _fromState(GoRouterState state) => SearchRoute(
        q: state.uri.queryParameters['q'],
      );

  SearchRoute get _self => this as SearchRoute;

  @override
  String get location => GoRouteData.$location(
        '/search',
        queryParams: {
          if (_self.q != null) 'q': _self.q,
        },
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

mixin _$AccountRoute on GoRouteData {
  static AccountRoute _fromState(GoRouterState state) => AccountRoute();

  @override
  String get location => GoRouteData.$location(
        '/account',
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

mixin _$SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) => SettingsRoute(
        state.extra as SettingsParams?,
      );

  SettingsRoute get _self => this as SettingsRoute;

  @override
  String get location => GoRouteData.$location(
        '/settings',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}
