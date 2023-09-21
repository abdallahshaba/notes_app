import 'package:flutter/material.dart';
import 'package:note_app2/widgets/custom_icom.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("Notes" , style: TextStyle(
          fontSize: 32 , fontWeight: FontWeight.bold
        ),),
        Spacer(),
      CustomSearchIcon(),
      ],
    );
  }
}
