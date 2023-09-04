import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_meds/core/utils/app_router.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          IconButton(
            iconSize: 35,
            padding: const EdgeInsets.only(left: 60),
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kUserProfile);
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
