import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_meds/constants.dart';
import 'package:my_meds/core/utils/app_router.dart';

void main() async {
  //to intiate hive
  await Hive.initFlutter();
   //use await because openbox is future, medicine note box type of MedicineModel
   await Hive.openBox(kMedicineBox);
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
