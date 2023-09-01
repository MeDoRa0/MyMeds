import 'package:flutter/material.dart';
import 'package:my_meds/features/home/views/widgets/custom_app_bar.dart';
import 'package:my_meds/features/home/views/widgets/medicine_item.dart';

class MedicineViewBody extends StatelessWidget {
  const MedicineViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: 'Your Medicines',
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: MedicineItem(),
        ),
      ],
    );
  }
}
