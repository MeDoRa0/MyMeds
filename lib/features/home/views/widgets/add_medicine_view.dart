import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_meds/features/home/views/widgets/add_medicine_form.dart';
import 'package:my_meds/features/home/views/widgets/custom_app_bar.dart';

class AddMedicineView extends StatelessWidget {
  const AddMedicineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const CustomAppBar(title: 'Add New Medicine'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              AddMedicineForm(),
            ],
          ),
        ),
      ),
    );
  }
}
