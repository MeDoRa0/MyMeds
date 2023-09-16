import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_meds/features/home/presentation/views/widgets/custom_app_bar.dart';

import 'add_medicine_form_body.dart';

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
              const AddMedcineFormBody(),
            ],
          ),
        ),
      ),
    );
  }
}

