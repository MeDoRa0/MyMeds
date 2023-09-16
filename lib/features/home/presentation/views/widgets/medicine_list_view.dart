import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_meds/core/model/medicine_model.dart';
import 'package:my_meds/features/home/presentation/manager/medicine_cubit/medicine_cubit.dart';
import 'package:my_meds/features/home/presentation/views/widgets/medicine_item.dart';

class MedicineListView extends StatelessWidget {
  const MedicineListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicineCubit, MedicineState>(
      builder: (context, state) {
        //this will build list of medicine that provided from medicinemodel, and if it null, put empty list
        List<MedicineModel> medicine =
            BlocProvider.of<MedicineCubit>(context).medicine ?? [];
        return ListView.builder(
          //show the objects in notes list
          itemCount: medicine.length,
          //to remove the defult padding of listview
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: MedicineItem(
                medicine: medicine[index],
              ),
            );
          },
        );
      },
    );
  }
}
