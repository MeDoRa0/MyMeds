import 'package:flutter/material.dart';
import 'package:my_meds/core/utils/styles.dart';
import 'package:my_meds/core/utils/widgets/custom_time_picker.dart';
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
              style: Styles.textStyle20,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text('breakfast time'),
            const MyTimePicker(),
          ],
        ),
      ),
    );
  }
}
