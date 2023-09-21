import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20 , bottom: 15),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80) , 
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text("Flutter Tips" , style: TextStyle(
              color: Colors.black ,
              fontSize: 28,
            ),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text("Build your career with abdallah shaban" ,
               style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 119, 21, 14).withOpacity(.6)
              ),
              ),
            ),
            trailing: IconButton(
              onPressed: (){}, 
              icon: Icon(
                FontAwesomeIcons.trash , color: Colors.black,
              ),),
              
          ),
        Padding(
          padding: const EdgeInsets.only(right: 30 , top: 15),
          child: Text("May21 , 2023" , style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(.7)
          ),),
        )
        
        ],
      ),
    );
  }
}