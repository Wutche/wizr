import 'package:app/features/home/home.page.dart';
import 'package:app/features/onboarding/onboarding.page.dart';
import 'package:app/features/splashscreen/splashscreen.page.dart';
import 'package:app/features/splashscreen/splashscreen_theme.page.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRoutes = GoRouter(
    initialLocation: "/onboarding",
    routes: <RouteBase>[
      GoRoute(
          path: "/splashscreen",
          builder: (context,state)=>const SplashScreenPage()
      ),
      GoRoute(
          path: "/splashscreen-theme",
          builder: (context,state)=>const SplashScreenThemePage()
      ),
      GoRoute(
          path: "/onboarding",
          builder: (context,state)=>const OnboardingPage()
      ),
      GoRoute(
          path: "/",
          builder: (context,state)=>const HomePage()
      ),
    ]
);