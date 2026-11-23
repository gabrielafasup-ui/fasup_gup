import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/theme/app_theme.dart';
import '../../../core/widgets/wave_clippers.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const displayDuration = Duration(milliseconds: 2500);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(SplashPage.displayDuration, () {
      if (mounted) context.go('/login');
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    // Respeita a configuração de acessibilidade "reduzir animações".
    final animate = !MediaQuery.disableAnimationsOf(context);
    final logoWidth = (size.width * 0.6).clamp(160.0, 320.0);

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0, -0.15),
            child: TweenAnimationBuilder<double>(
              tween: Tween(begin: animate ? 0 : 1, end: 1),
              duration: const Duration(milliseconds: 900),
              curve: Curves.easeOut,
              builder: (context, value, child) =>
                  Opacity(opacity: value, child: child),
              child: Image.asset(
                'assets/images/logo_fasup.png',
                width: logoWidth,
                semanticLabel: 'Logotipo da Faculdade FASUP',
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: size.height * 0.18,
            child: const ClipPath(
              clipper: BottomWaveClipper(),
              child: ColoredBox(color: AppColors.navy),
            ),
          ),
        ],
      ),
    );
  }
}