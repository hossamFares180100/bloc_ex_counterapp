import 'package:bloc_ex/bloc/counter_bloc.dart';
import 'package:bloc_ex/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>CounterBloc(),child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),);
  }

}