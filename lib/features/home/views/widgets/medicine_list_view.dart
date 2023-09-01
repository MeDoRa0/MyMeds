import 'package:flutter/material.dart';
import 'package:my_meds/features/home/views/widgets/medicine_item.dart';

class MedicineListView extends StatelessWidget {
  const MedicineListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //to remove the defult padding of listview
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: MedicineItem(),
        );
      },
    );
  }
}
