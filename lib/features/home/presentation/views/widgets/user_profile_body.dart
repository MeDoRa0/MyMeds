import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_meds/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:my_meds/features/home/presentation/views/widgets/user_profile_form.dart';

class UserProfileBody extends StatelessWidget {
  const UserProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back),
              ),
              const CustomAppBar(title: 'Your Profile'),
            ],
          ),
          const UserProfileForm(),
        ],
      ),
    );
  }
}
