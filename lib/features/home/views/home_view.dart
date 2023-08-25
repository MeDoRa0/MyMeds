import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_meds/core/utils/app_router.dart';

import 'widgets/medicine_view_body.dart';

class MedicineView extends StatelessWidget {
  const MedicineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          GoRouter.of(context).push(
            AppRouter.kAddNewMedicine,
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const MedicineViewBody(),
    );
  }
}
