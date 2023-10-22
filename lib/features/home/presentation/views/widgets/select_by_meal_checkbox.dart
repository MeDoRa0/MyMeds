import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/add_medicine_cubit/add_medicine_cubit.dart';

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
          //this will provide the selected meal to AddMedicineCubit
          value: BlocProvider.of<AddMedicineCubit>(context)
              .selectedMeal
              .contains('before breakfast'),
          onChanged: (bool? value) {
            setState(
              () {
                if (value!) {
                  BlocProvider.of<AddMedicineCubit>(context)
                      .selectedMeal
                      .add('before breakfast');
                } else {
                  BlocProvider.of<AddMedicineCubit>(context)
                      .selectedMeal
                      .remove('before breakfast');
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
          //this will provide the selected meal to AddMedicineCubit
          value: BlocProvider.of<AddMedicineCubit>(context)
              .selectedMeal
              .contains('after breakfast'),
          onChanged: (bool? value) {
            setState(
              () {
                if (value!) {
                  BlocProvider.of<AddMedicineCubit>(context)
                      .selectedMeal
                      .add('after breakfast');
                } else {
                  BlocProvider.of<AddMedicineCubit>(context)
                      .selectedMeal
                      .remove('after breakfast');
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
          value: BlocProvider.of<AddMedicineCubit>(context)
              .selectedMeal
              .contains('before lunch'),
          onChanged: (bool? value) {
            setState(
              () {
                if (value!) {
                  BlocProvider.of<AddMedicineCubit>(context)
                      .selectedMeal
                      .add('before lunch');
                } else {
                  BlocProvider.of<AddMedicineCubit>(context)
                      .selectedMeal
                      .remove('before lunch');
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
          value: BlocProvider.of<AddMedicineCubit>(context)
              .selectedMeal
              .contains('after lunch'),
          onChanged: (bool? value) {
            setState(
              () {
                if (value!) {
                  BlocProvider.of<AddMedicineCubit>(context)
                      .selectedMeal
                      .add('after lunch');
                } else {
                  BlocProvider.of<AddMedicineCubit>(context)
                      .selectedMeal
                      .remove('after lunch');
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
          value: BlocProvider.of<AddMedicineCubit>(context)
              .selectedMeal
              .contains('before dinner'),
          onChanged: (bool? value) {
            setState(
              () {
                if (value!) {
                  BlocProvider.of<AddMedicineCubit>(context)
                      .selectedMeal
                      .add('before dinner');
                } else {
                  BlocProvider.of<AddMedicineCubit>(context)
                      .selectedMeal
                      .remove('before dinner');
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
          value: BlocProvider.of<AddMedicineCubit>(context)
              .selectedMeal
              .contains('after dinner'),
          onChanged: (bool? value) {
            setState(
              () {
                if (value!) {
                  BlocProvider.of<AddMedicineCubit>(context)
                      .selectedMeal
                      .add('after dinner');
                } else {
                  BlocProvider.of<AddMedicineCubit>(context)
                      .selectedMeal
                      .remove('after dinner');
                }
              },
            );
          },
        ),
      ],
    );
  }
}
