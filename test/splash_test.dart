import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fasup_gup/app/routes/app_router.dart';
import 'package:fasup_gup/app/theme/app_theme.dart';
import 'package:fasup_gup/features/splash/presentation/splash_page.dart';

void main() {
  testWidgets('splash navega para o login após o tempo de exibição',
      (tester) async {
    await tester.pumpWidget(MaterialApp.router(
      theme: AppTheme.light,
      routerConfig: createAppRouter(),
    ));

    expect(find.byType(SplashPage), findsOneWidget);

    await tester.pump(SplashPage.displayDuration);
    await tester.pumpAndSettle();

    expect(find.text('Tela de login'), findsOneWidget);
  });
}