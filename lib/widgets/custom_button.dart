import 'package:flutter/material.dart';
import 'package:note_app2/widgets/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: Center(
        child: Text("Save" , style: TextStyle(
          color: Color(0xff2e2e2e), fontWeight: FontWeight.bold,
          fontSize: 18
        ),),
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8)
      ),
    );
  }
}