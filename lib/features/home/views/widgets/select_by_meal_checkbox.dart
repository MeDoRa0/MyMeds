import 'package:flutter/material.dart';
import 'package:my_meds/core/utils/styles.dart';
import 'package:my_meds/core/utils/widgets/custom_time_picker.dart';

enum Meal {
  beforebreakfast,
  afterbreackfast,
  beforelunch,
  afterlunsh,
  beforedinner,
  afterdinner
}

class SelectByMealCheckBox extends StatefulWidget {
  const SelectByMealCheckBox({super.key});

  @override
  State<SelectByMealCheckBox> createState() => _SelectByMealCheckBoxState();
}

class _SelectByMealCheckBoxState extends State<SelectByMealCheckBox> {
  List<String> selectedMeal = [];
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.red;
      }
      return Colors.white;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CheckboxListTile(
          title: const Text('before breakfast'),
          controlAffinity: ListTileControlAffinity.leading,
          checkColor: Colors.black,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: selectedMeal.contains('before breakfast'),
          onChanged: (bool? value) {
            setState(
              () {
                if (value!) {
                  selectedMeal.add('before breakfast');
                } else {
                  selectedMeal.remove('before breakfast');
                }
              },
            );
          },
        ),
        CheckboxListTile(
          title: const Text('after breakfast'),
          controlAffinity: ListTileControlAffinity.leading,
          checkColor: Colors.black,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: selectedMeal.contains('after breakfast'),
          onChanged: (bool? value) {
            setState(
              () {
                if (value!) {
                  selectedMeal.add('after breakfast');
                } else {
                  selectedMeal.remove('after breakfast');
                }
              },
            );
          },
        ),
        CheckboxListTile(
          title: const Text('before lunch'),
          controlAffinity: ListTileControlAffinity.leading,
          checkColor: Colors.black,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: selectedMeal.contains('before lunch'),
          onChanged: (bool? value) {
            setState(
              () {
                if (value!) {
                  selectedMeal.add('before lunch');
                } else {
                  selectedMeal.remove('before lunch');
                }
              },
            );
          },
        ),
        CheckboxListTile(
          title: const Text('after lunch'),
          controlAffinity: ListTileControlAffinity.leading,
          checkColor: Colors.black,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: selectedMeal.contains('after lunch'),
          onChanged: (bool? value) {
            setState(
              () {
                if (value!) {
                  selectedMeal.add('after lunch');
                } else {
                  selectedMeal.remove('after lunch');
                }
              },
            );
          },
        ),
        CheckboxListTile(
          title: const Text('before dinner'),
          controlAffinity: ListTileControlAffinity.leading,
          checkColor: Colors.black,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: selectedMeal.contains('before dinner'),
          onChanged: (bool? value) {
            setState(
              () {
                if (value!) {
                  selectedMeal.add('before dinner');
                } else {
                  selectedMeal.remove('before dinner');
                }
              },
            );
          },
        ),
        CheckboxListTile(
          title: const Text('after dinner'),
          controlAffinity: ListTileControlAffinity.leading,
          checkColor: Colors.black,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: selectedMeal.contains('after dinner'),
          onChanged: (bool? value) {
            setState(
              () {
                if (value!) {
                  selectedMeal.add('after dinner');
                } else {
                  selectedMeal.remove('after dinner');
                }
              },
            );
          },
        ),
      ],
    );
  }
}

class MealTime extends StatefulWidget {
  const MealTime({super.key});

  @override
  State<MealTime> createState() => _MealTimeState();
}

class _MealTimeState extends State<MealTime> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'when is your meal time?',
          style: Styles.textStyle16,
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Text(
              'breakfast',
              style: Styles.textStyle16,
            ),
            SizedBox(
              width: 8,
            ),
            MyTimePicker(),
          ],
        ),
      ],
    );
  }
}
