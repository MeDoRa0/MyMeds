part of 'medicine_time_cubit.dart';

@immutable
sealed class MedicineTimeState {
  const MedicineTimeState();
}

final class MedicineTimeInitial extends MedicineTimeState {}

final class MedicineTimeByMeal extends MedicineTimeState {
  final List<MedicineModel> medicine;

  const MedicineTimeByMeal(this.medicine);
}

final class MedicineTimeByTime extends MedicineTimeState {}
