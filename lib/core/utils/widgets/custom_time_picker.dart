import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
import 'package:my_meds/core/model/medicine_model.dart';
import 'package:my_meds/features/home/presentation/manager/add_medicine_cubit/add_medicine_cubit.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  final addMedicineCubit = AddMedicineCubit();
  List<String> medicineTime = [];
  TimeOfDay? selectedTime;
  TimePickerEntryMode entryMode = TimePickerEntryMode.dial;
  Orientation? orientation;
  TextDirection textDirection = TextDirection.ltr;
  MaterialTapTargetSize tapTargetSize = MaterialTapTargetSize.padded;
  bool use24HourTime = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddMedicineCubit(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              child: const Text('select time'),
              onPressed: () async {
                final TimeOfDay? time = await showTimePicker(
                  context: context,
                  initialTime: selectedTime ?? TimeOfDay.now(),
                  initialEntryMode: entryMode,
                  orientation: orientation,
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        materialTapTargetSize: tapTargetSize,
                      ),
                      child: Directionality(
                        textDirection: textDirection,
                        child: MediaQuery(
                          data: MediaQuery.of(context).copyWith(
                            alwaysUse24HourFormat: use24HourTime,
                          ),
                          child: child!,
                        ),
                      ),
                    );
                  },
                );
                setState(() {
                  selectedTime = time;
                  // addMedicineCubit.medicineTime;
                  BlocProvider.of<AddMedicineCubit>(context).medicineTime =
                      time.toString();
                });
              },
            ),
          ),
          if (selectedTime != null)
            Text('Selected time: ${selectedTime!.format(context)}'),
        ],
      ),
    );
  }
}
