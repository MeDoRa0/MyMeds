import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_meds/core/model/medicine_model.dart';

part 'medicine_time_state.dart';

class MedicineTimeCubit extends Cubit<MedicineTimeState> {
  MedicineTimeCubit() : super(MedicineTimeInitial());
}
