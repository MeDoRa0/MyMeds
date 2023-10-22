import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:my_meds/core/model/medicine_model.dart';
import 'package:my_meds/core/utils/styles.dart';
import 'package:my_meds/features/home/presentation/manager/add_medicine_cubit/add_medicine_cubit.dart';
import 'package:my_meds/features/home/presentation/views/widgets/custom_add_button.dart';
import 'package:my_meds/features/home/presentation/views/widgets/custom_text_filed.dart';
import 'package:my_meds/features/home/presentation/views/widgets/select_by_meal_section.dart';

import 'select_by_time_section.dart';

class AddMedicineForm extends StatefulWidget {
  const AddMedicineForm({super.key});

  @override
  State<AddMedicineForm> createState() => _AddMedicineFormState();
}

class _AddMedicineFormState extends State<AddMedicineForm> {
  //we creat this because we use form
  final GlobalKey<FormState> formKey = GlobalKey();
  //we use this to vaildate user input
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? medicneName, illnessName, selectedMeal, date, medicineTime;

  showSelectedMeal(selectedMealValue) {
    selectedMeal = selectedMealValue;
  }

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
            SelectByMeal(selectedMeal: showSelectedMeal),
            const SelectByTime(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: BlocBuilder<AddMedicineCubit, AddMedicineState>(
                builder: (context, state) {
                  return CustomAddButton(
                    //if state is addMedicineloading, show loading, if not , dont show
                    isLoading: state is AddMedicineLoading ? true : false,
                    onTap: () {
                      //validate the currentstate
                      if (formKey.currentState!.validate()) {
                        //save currentstate
                        formKey.currentState!.save();
                        var currentDate = DateTime.now();
                        //this will creat formated date
                        var formatedCurrentDate =
                            DateFormat.yMd().format(currentDate);
                        //this if i want to creat format  DateFormat('dd/mm/yyyy').format(currentDate);
                        //creat model then save model in medicine so we can creat new note
                        var medicinModel = MedicineModel(
                          medicineName: medicneName!,
                          illnessName: illnessName!,
                          date: formatedCurrentDate,
                          medicineTime: medicineTime,
                          selectedMeal:
                              BlocProvider.of<AddMedicineCubit>(context)
                                  .selectedMeal,
                          mealTime: '',
                          userName: '',
                        );
                        BlocProvider.of<AddMedicineCubit>(context)
                            .addMedicine(medicinModel);
                      } else {
                        //this to validate user input all the time
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
