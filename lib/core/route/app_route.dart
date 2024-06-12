import 'package:flutter/material.dart';
import '../../feature/drawing_room/presentation/drawing_room_screen.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => const DrawingRoomScreen(),
      settings: settings,
    );
  }
}