import 'package:auto_route/auto_route.dart';
import 'package:paytr_test_case/src/routing/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnboardingRoute.page, path: '/'),
        AutoRoute(page: HomeRoute.page, path: '/home'),
        AutoRoute(page: DetailListRoute.page, path: '/detail'),
        AutoRoute(page: DetailRoute.page, path: '/detail/:resource'),
      ];
}
