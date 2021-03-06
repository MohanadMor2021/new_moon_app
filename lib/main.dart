import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_moon_app/screens/bnb_screens/main_screen.dart';
import 'cubit/global_cubit.dart';
import 'cubit/global_states.dart';
import 'test_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return  MultiBlocProvider(
        providers: [

          BlocProvider(
              create: (context) => GlobalCubit()),
        ],
        child: BlocConsumer<GlobalCubit,GlobalStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(

                debugShowCheckedModeBanner: false,
                home: MainScreen(),
            );
          },
        ));
  }
}
