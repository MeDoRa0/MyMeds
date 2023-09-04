import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_meds/features/home/views/widgets/custom_app_bar.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UserProfileBody(),
    );
  }
}

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
        ],
      ),
    );
  }
}
