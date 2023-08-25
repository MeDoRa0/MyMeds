import 'package:flutter/material.dart';
import 'package:my_meds/core/utils/styles.dart';
import 'package:my_meds/features/home/views/widgets/custom_text_filed.dart';
import 'package:my_meds/features/home/views/widgets/select_by_meal_checkbox.dart';

class AddMedicineForm extends StatefulWidget {
  const AddMedicineForm({super.key});

  @override
  State<AddMedicineForm> createState() => _AddMedicineFormState();
}

class _AddMedicineFormState extends State<AddMedicineForm> {
  bool switchbuttonvalue = false;
  //we creat this because we use form
  final GlobalKey<FormState> formKey = GlobalKey();
  //we use this to vaildate user input
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? medicneName, medicineFor;
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
              style: Styles.textStyle16,
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
              style: Styles.textStyle16,
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextField(
              onSaved: (value) {
                medicineFor = value;
              },
              hint: 'enter what does the medicine treat',
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'select when will you take your medicine',
              style: Styles.textStyle16,
            ),
            SwitchListTile(
              title: const Text('select by meal'),
              value: switchbuttonvalue,
              onChanged: (bool value) {
                setState(
                  () {
                    switchbuttonvalue = value;
                  },
                );
              },
            ),
            if (switchbuttonvalue) const SelectByMealCheckBox(),
          ],
        ),
      ),
    );
  }
}
