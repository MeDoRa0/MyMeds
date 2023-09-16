import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_meds/constants.dart';
import 'package:my_meds/core/utils/app_router.dart';
import 'package:my_meds/features/home/presentation/manager/medicine_cubit/medicine_cubit.dart';

import 'core/model/medicine_model.dart';
import 'simple_bloc_observer.dart';

void main() async {
  //to intiate hive
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  //to tell hive to deal with notemodel by  register type adapter named NoteModelAdabter that created in medicine_model.g.dart
  Hive.registerAdapter(MedicineModelAdapter());
  //use await because openbox is future, medicine box type of MedicineModel
  await Hive.openBox<MedicineModel>(kMedicineBox);
  runApp(const MyMeds());
}

class MyMeds extends StatelessWidget {
  const MyMeds({super.key});

  @override
  Widget build(BuildContext context) {
    //to provide cubit
    return BlocProvider(
      create: (context) => MedicineCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData.dark(),
      ),
    );
  }
}
