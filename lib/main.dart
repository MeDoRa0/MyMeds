import 'package:flutter/material.dart';
import 'package:my_meds/core/utils/app_router.dart';

void main() {
  runApp(const MyMeds());
}

class MyMeds extends StatelessWidget {
  const MyMeds({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData.dark(),
    );
  }
}
