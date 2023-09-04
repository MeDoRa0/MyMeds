import 'package:flutter/material.dart';
import 'package:my_meds/core/utils/styles.dart';
import 'package:my_meds/features/home/views/widgets/custom_add_button.dart';
import 'package:my_meds/features/home/views/widgets/custom_text_filed.dart';
import 'package:my_meds/features/home/views/widgets/select_by_meal_section.dart';
import 'package:my_meds/features/home/views/widgets/select_by_time_section.dart';

class AddMedicineForm extends StatefulWidget {
  AddMedicineForm({super.key});

  @override
  State<AddMedicineForm> createState() => _AddMedicineFormState();
}

class _AddMedicineFormState extends State<AddMedicineForm> {
  //we creat this because we use form
  final GlobalKey<FormState> formKey = GlobalKey();
  //we use this to vaildate user input
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? medicneName, illnessName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'medicine name :',
              style: Styles.textStyle20,
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextField(
              onSaved: (value) {
                medicneName = value;
              },
              hint: 'enter medicien name',
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'medicine for :',
              style: Styles.textStyle20,
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextField(
              onSaved: (value) {
                illnessName = value;
              },
              hint: 'enter what does the medicine treat',
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'select when will you take your medicine',
              style: Styles.textStyle20,
            ),
            //select by meal section
            const SelectByMeal(),
            const SelectByTime(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: CustomAddButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
