import 'package:flutter/material.dart';
import '../../feature/drawing_room/presentation/drawing_room_screen.dart';
import '/core/route/app_route_name.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.drawingRoom:
        return MaterialPageRoute(
          builder: (_) => const DrawingRoomScreen(),
          settings: settings,
        );
    }

    return null;
  }
}