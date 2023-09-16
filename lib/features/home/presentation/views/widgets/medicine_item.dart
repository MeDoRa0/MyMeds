import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_meds/core/model/medicine_model.dart';
import 'package:my_meds/features/home/presentation/manager/medicine_cubit/medicine_cubit.dart';

class MedicineItem extends StatelessWidget {
  MedicineItem({super.key, required this.medicine});
  final MedicineModel medicine;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ListTile(
              title: Text(
                medicine.medicineName,
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Text(
                      medicine.illnessName,
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    /* Text(
                      medicine.selectedMeal as String,
                      style: Styles.textStyle16,
                    ),*/
                  ],
                ),
              ),
              trailing: FittedBox(
                fit: BoxFit.none,
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        //this will delete note
                        medicine.delete();
                        //this will refresh the list after delete
                        BlocProvider.of<MedicineCubit>(context)
                            .fetchAllMedicine();
                      },
                      icon: const Icon(
                        Icons.delete,
                        size: 25,
                      ),
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        size: 25,
                      ),
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              medicine.date,
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ]),
      ),
    );
  }
}
