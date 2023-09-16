import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:my_meds/constants.dart';
import 'package:my_meds/core/model/medicine_model.dart';

part 'add_medicine_state.dart';

class AddMedicineCubit extends Cubit<AddMedicineState> {
  AddMedicineCubit() : super(AddMedicineInitial());
  //creat addMedicine method that recive medicinemodel
  addMedicine(MedicineModel medicine) async {
    emit(AddMedicineLoading());
    try {
      //variable medicineBox that recive from kMedicineBox
      var medicineBox = Hive.box<MedicineModel>(kMedicineBox);
      //if success
      await medicineBox.add(medicine);
      emit(AddMedicineSuccess());
    } catch (e) {
      //if failure,
      emit(
        AddMedicineFailure(
          e.toString(),
        ),
      );
    }
  }
}
