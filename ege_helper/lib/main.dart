import 'package:flutter/material.dart';
import 'package:ege_helper/router/router.dart';

void main() {
  runApp(const EGEHelperApp());
}

class EGEHelperApp extends StatefulWidget {
  const EGEHelperApp({super.key});

  @override
  State<EGEHelperApp> createState() => _EGEHelperAppState();
}

class _EGEHelperAppState extends State<EGEHelperApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Color(0xFF672A17);
    return MaterialApp.router(
      title: 'EGEHelper',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEFF1F3),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      routerConfig: _router.config(),
    );
  }
}
