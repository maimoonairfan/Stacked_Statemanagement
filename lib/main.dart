import 'package:flutter/material.dart';
import 'package:stacked_counterapp/App/app.locator.dart';
import 'package:stacked_counterapp/App/app.router.dart';
import 'package:stacked_counterapp/views/counterview.dart';
import 'package:stacked_services/stacked_services.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
