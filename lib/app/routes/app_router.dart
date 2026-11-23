import 'package:go_router/go_router.dart';

import '../../features/authentication/presentation/login_page.dart';
import '../../features/splash/presentation/splash_page.dart';

GoRouter createAppRouter() => GoRouter(
      initialLocation: '/splash',
      routes: [
        GoRoute(path: '/splash', builder: (_, __) => const SplashPage()),
        GoRoute(path: '/login', builder: (_, __) => const LoginPage()),
      ],
    );