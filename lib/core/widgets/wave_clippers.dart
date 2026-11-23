import 'package:flutter/material.dart';

/// Recorte de onda para a base da tela (splash e rodapés decorativos).
/// Ajuste os valores dos pontos de controle para aproximar do Figma.
class BottomWaveClipper extends CustomClipper<Path> {
  const BottomWaveClipper();

  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;
    return Path()
      ..moveTo(0, h * 0.35)
      ..cubicTo(w * 0.30, h * 0.85, w * 0.60, h * 0.55, w, h * 0.05)
      ..lineTo(w, h)
      ..lineTo(0, h)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}