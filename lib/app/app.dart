import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes/app_router.dart';
import 'theme/app_theme.dart';

class FasupGupApp extends StatefulWidget {
  const FasupGupApp({super.key});

  @override
  State<FasupGupApp> createState() => _FasupGupAppState();
}

class _FasupGupAppState extends State<FasupGupApp> {
  // Criado uma única vez para o hot reload não reiniciar a navegação.
  late final GoRouter _router = createAppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FASUP GUP',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: _router,
    );
  }
}