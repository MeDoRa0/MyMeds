import 'package:flutter/material.dart';
import 'package:my_meds/core/utils/widgets/custom_time_picker.dart';

class SelectByTime extends StatefulWidget {
  const SelectByTime({super.key});

  @override
  State<SelectByTime> createState() => _SelectByTimeState();
}

class _SelectByTimeState extends State<SelectByTime> {
  bool switchbuttonTime = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SwitchListTile(
          title: const Text('select by time'),
          value: switchbuttonTime,
          onChanged: (bool value) {
            setState(
              () {
                switchbuttonTime = value;
              },
            );
          },
        ),
        if (switchbuttonTime) const MyTimePicker(),
      ],
    );
  }
}
