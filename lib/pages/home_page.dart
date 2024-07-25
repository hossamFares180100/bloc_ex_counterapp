import 'package:bloc_ex/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/button_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Flutter Bloc",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Counter Value is:",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                BlocBuilder<CounterBloc,CounterState>(builder: (context,state){
                  if (state is CounterInitial){
                    return Text(
                      "0",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 30,
                      ),
                    );
                  }
                  else if(state is CounterValueChangedState){
                    return Text(
                      state.counter.toString(),
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 30,
                      ),
                    );
                  }
                  else
                    return Container();
                }),

              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ButtonsWidget(),
          ),
        ],
      ),
    );
  }
}