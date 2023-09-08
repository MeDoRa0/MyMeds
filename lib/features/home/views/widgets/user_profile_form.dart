import 'package:flutter/material.dart';
import 'package:my_meds/core/utils/styles.dart';
import 'package:my_meds/features/home/views/widgets/custom_text_filed.dart';

class UserProfileForm extends StatefulWidget {
  const UserProfileForm({super.key});

  @override
  State<UserProfileForm> createState() => _UserProfileFormState();
}

class _UserProfileFormState extends State<UserProfileForm> {
  //we creat this because we use form
  final GlobalKey<FormState> formKey = GlobalKey();
  //we use this to vaildate user input
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? userName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'what is your name?',
              style: Styles.textStyle20,
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextField(
                onSaved: (value) {
                  userName = value;
                },
                hint: 'enter your name'),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'select when is your meal time ?',
              style: Styles.textStyle24,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'breakfast time',
              style: Styles.textStyle20,
            ),
            const MealTime(),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Lunch time',
              style: Styles.textStyle20,
            ),
            const MealTime(),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'dinner time',
              style: Styles.textStyle20,
            ),
            const MealTime(),
          ],
        ),
      ),
    );
  }
}

class MealTime extends StatefulWidget {
  const MealTime({super.key});

  @override
  State<MealTime> createState() => _MealTimeState();
}

class _MealTimeState extends State<MealTime> {
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
          title: const Text('select time'),
          subtitle: Text('selected time is ${_time.format(context)} '),
          onTap: () => _selectTime(context),
        ),
      ],
    );
  }
}
