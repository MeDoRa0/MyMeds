import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:my_meds/constants.dart';
import 'package:my_meds/core/model/medicine_model.dart';

part 'medicine_state.dart';

class MedicineCubit extends Cubit<MedicineState> {
  MedicineCubit() : super(MedicineInitial());
  // list of medicinemodel called medicine
  List<MedicineModel>? medicine;
  // this method to fetch all medicines and shoe them
  fetchAllMedicine() async {
    //variable medicineBox that recive from kMedicineBox
    var medicineBox = Hive.box<MedicineModel>(kMedicineBox);
    //list if medcinemodel
    medicine = medicineBox.values.toList();
    emit(MedicineSuccess());
  }
}
