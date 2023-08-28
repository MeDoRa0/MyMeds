import 'package:flutter/material.dart';
import 'package:my_meds/core/utils/widgets/custom_drop_down_button.dart';

class MyTimePicker extends StatefulWidget {
  const MyTimePicker({Key? key}) : super(key: key);

  @override
  _MyTimePickerState createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  TimeOfDay _time = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Select time'),
          subtitle: Text('Selected time is ${_time.format(context)}'),
          onTap: () => _selectTime(context),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text('Repeat every'),
              SizedBox(
                width: 64,
              ),
              CustomDropButton(),
            ],
          ),
        )
      ],
    );
  }
}
