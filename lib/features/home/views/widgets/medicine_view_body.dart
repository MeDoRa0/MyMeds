import 'package:flutter/material.dart';
import 'package:my_meds/features/home/views/widgets/custom_app_bar.dart';
import 'package:my_meds/features/home/views/widgets/custom_bottom_bar.dart';
import 'medicine_list_view.dart';

class MedicineViewBody extends StatelessWidget {
  const MedicineViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: 'Your Medicines',
        ),
        Expanded(
          child: MedicineListView(),
        ),
        CustomBottomBar(),
      ],
    );
  }
}
