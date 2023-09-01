
import 'package:flutter/material.dart';
import 'package:my_meds/constants.dart';

class CustomAddButton extends StatelessWidget {
   const CustomAddButton({super.key, this.onTap, this.isLoading = false});
  //i copy this code from onTap info
  final void Function()? onTap;
  //to show loading icon on button
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //this to make button take screen width
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLoading
          //sizsedbox to adjust loading dimanions
              ? const SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
        ),
      ),
    );
  }
}