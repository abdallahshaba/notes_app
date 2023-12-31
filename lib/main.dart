import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app2/bloc_observer.dart';
import 'package:note_app2/cubit/cubit/add_note_cubit.dart';
import 'package:note_app2/models/note_model.dart';
import 'package:note_app2/pages/home_page.dart';
import 'package:note_app2/widgets/constants.dart';

void main ()async{
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context){
          return AddNoteCubit();
        })
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark ,
        fontFamily: 'Poppins'
        ),
        home: const  HomePage()
      ),
    );
  }
}