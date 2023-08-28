import 'package:flutter/material.dart';
import 'package:my_meds/features/home/views/widgets/add_medicine_form.dart';
import 'package:my_meds/features/home/views/widgets/custom_app_bar.dart';

class AddMedicineView extends StatelessWidget {
  const AddMedicineView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(title: 'Add New Medicine'),
            SizedBox(
              height: 20,
            ),
            AddMedicineForm(),
          ],
        ),
      ),
    );
  }
}
