class MedicineModel {
  final String medicineName;
  final String illnessName;
  final String mealTime;
  final String date;
  final String time;

  MedicineModel(this.mealTime, 
      {required this.medicineName,
      required this.illnessName,
      required this.date,
      required this.time});
}
