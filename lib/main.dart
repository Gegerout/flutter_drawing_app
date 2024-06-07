import 'package:flutter/material.dart';
import 'core/route/app_route.dart';
import 'core/route/app_route_name.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Рисовалка",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true),
      initialRoute: AppRouteName.drawingRoom,
      onGenerateRoute: AppRoute.generate,
      navigatorObservers: [routeObserver],
    );
  }
}
