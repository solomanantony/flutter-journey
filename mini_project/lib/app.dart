import 'package:flutter/material.dart';
import 'package:mini_project/app_routes.dart';
import 'package:mini_project/pages/intro_page.dart';
import 'package:mini_project/pages/login_page.dart';
import 'package:mini_project/pages/product_list_page.dart';
import 'package:mini_project/pages/register_page.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.intro,
      routes: <String, WidgetBuilder>{
        AppRoutes.intro: (BuildContext context) => const IntroPage(),
        AppRoutes.login: (BuildContext context) => const LoginPage(),
        AppRoutes.register: (BuildContext context) => const RegisterPage(),
        AppRoutes.products: (BuildContext context) => const ProductListPage(),
      },
    );
  }
}
