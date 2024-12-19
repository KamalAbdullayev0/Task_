import 'package:auto_route/auto_route.dart';
import 'package:test_/src/config/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/spalsh'),
        AutoRoute(page: Onboarding1Route.page, path: '/onboarding1'),
        AutoRoute(page: Onboarding2Route.page, path: '/onboarding2'),
        AutoRoute(page: Onboarding3Route.page, path: '/onboarding3'),
        AutoRoute(
            page: PersonalisationRoute.page,
            path: '/onboarding3/1',
            initial: true),
        // AutoRoute(page: Personalisation2Route.page, path: '/onboarding3/1/2'),
        // AutoRoute(page: Personalisation3Route.page, path: '/onboarding3/1/2/3'),
        // AutoRoute(page: Personalisation4Route.page, path: '/onboarding3/1/2/3/4'),
        // AutoRoute(page: Personalisation5Route.page, path: '/onboarding3/1/2/3/4/5'),
        // AutoRoute(page: Personalisation6Route.page, path: '/onboarding3/1/2/3/4/5/6'),
        // AutoRoute(page: Personalisation7Route.page, path: '/onboarding3/1/2/3/4/5/6/7'),
        // AutoRoute(page: CreateTrainingRoute.page, path: 'CreateTraining'),
      ];
}
