import 'package:flutter/material.dart';
import 'package:space_project/core/routes/app_routes.dart';
import 'package:space_project/core/services/service_locator.dart';
import 'package:space_project/core/utils/app_strings.dart';

void main() {
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
