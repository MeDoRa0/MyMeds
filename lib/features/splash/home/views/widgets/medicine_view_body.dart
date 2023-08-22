import 'package:flutter/material.dart';
import 'package:my_meds/features/splash/home/views/widgets/custom_app_bar.dart';

class MedicineViewBody extends StatelessWidget {
  const MedicineViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: 'Your Medicines',
        ),
      ],
    );
  }
}