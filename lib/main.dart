import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_design/app/app.bottomsheets.dart';
import 'package:responsive_design/app/app.dialogs.dart';
import 'package:responsive_design/app/app.locator.dart';
import 'package:responsive_design/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.startupView,
      debugShowCheckedModeBanner: false,
      theme: _buildCustomTheme(),
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
   ThemeData _buildCustomTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      primaryColor: Colors.deepPurple,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.purple[300],
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.primaries[
            Random().nextInt(Colors.primaries.length)],
        
        textTheme: ButtonTextTheme.primary,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
      ),
    );
  }

  
}
