import 'package:flutter/material.dart';

const List<String> list = <String>[
  '6 hours',
  '8 hours',
  '12 hours',
  'day',
];

class CustomDropButton extends StatefulWidget {
  const CustomDropButton({super.key});

  @override
  State<CustomDropButton> createState() => _CustomDropButtonState();
}

class _CustomDropButtonState extends State<CustomDropButton> {
  String repeatTime = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: repeatTime,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.yellowAccent),
      underline: Container(
        height: 2,
        color: Colors.yellowAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          repeatTime = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
