import 'package:hive_flutter/adapters.dart';
//this fill will be generated to creat file adabter for this model
part 'medicine_model.g.dart';

// determine type id for the object in hive database
@HiveType(typeId: 0)
// we use hiveobject to make the model able to store in hive
class MedicineModel extends HiveObject {
  //give each field a hivefield id
  @HiveField(0)
  String medicineName;
  @HiveField(1)
  String illnessName;
  @HiveField(2)
  dynamic mealTime;
  @HiveField(3)
  String date;
  @HiveField(4)
  String userName;
  @HiveField(5)
  dynamic medicineTime;
  @HiveField(6)
  dynamic selectedMeal;

  MedicineModel(
      {required this.medicineName,
      required this.illnessName,
      required this.mealTime,
      required this.date,
      required this.userName,
      required this.medicineTime,
      required this.selectedMeal});
}
 //type this command in terminal after finish this file
 // flutter packages pub run build_runner build 
 // press enter