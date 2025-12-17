import 'package:flutter/material.dart';
import 'package:fccc_app/routing/app_router.dart';

void main() {
  runApp(const FCCCApp());
}

class FCCCApp extends StatelessWidget {
  const FCCCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FCCC App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
    );
  }
}
