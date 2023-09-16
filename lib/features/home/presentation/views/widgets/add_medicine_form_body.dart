import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_meds/features/home/presentation/manager/add_medicine_cubit/add_medicine_cubit.dart';

import '../../manager/medicine_cubit/medicine_cubit.dart';
import 'add_medicine_form.dart';

class AddMedcineFormBody extends StatelessWidget {
  const AddMedcineFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddMedicineCubit(),
      child: BlocConsumer<AddMedicineCubit, AddMedicineState>(
        listener: (context, state) {
          if (state is AddMedicineFailure) {}
          if (state is AddMedicineSuccess) {
            BlocProvider.of<MedicineCubit>(context).fetchAllMedicine();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          //AbsorbPointer will prevent user to enter new data while loading
          return AbsorbPointer(
              //if state is loading , activate absorbpointer
              absorbing: state is AddMedicineLoading ? true : false,
              child: const AddMedicineForm());
        },
      ),
    );
  }
}
