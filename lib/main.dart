import 'package:fala_ai_app/screens/home_page.dart';
import 'package:fala_ai_app/screens/splash_screen.dart';
import 'package:fala_ai_app/theme/theme_mode_handler.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeModeHandler>(
      create: (_) => ThemeModeHandler(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeModeHandler(),
      builder: (context, _) {
        final themeModeHandler = Provider.of<ThemeModeHandler>(context);
        return MaterialApp(
          title: 'Fala Aí',
          themeMode: themeModeHandler.themeMode,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            // ignore: deprecated_member_use
            accentColor: Colors.blueAccent,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => const SplashScreen(),
            '/home': (context) => const HomePage(),
          },
        );
      },
    );
  }
}
