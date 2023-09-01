import 'package:flutter/material.dart';

import 'select_by_meal_checkbox.dart';

class SelectByMeal extends StatefulWidget {
  const SelectByMeal({super.key});

  @override
  State<SelectByMeal> createState() => _SelectByMealState();
}

class _SelectByMealState extends State<SelectByMeal> {
  bool switchbuttonMeal = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SwitchListTile(
          activeColor: Colors.yellowAccent,
          title: const Text('select by meal'),
          value: switchbuttonMeal,
          onChanged: (bool value) {
            setState(
              () {
                switchbuttonMeal = value;
              },
            );
          },
        ),
        if (switchbuttonMeal) const SelectByMealCheckBox(),
      ],
    );
  }
}
