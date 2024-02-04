

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state/bloc/counter_bloc.dart';


class IncrementDecrementPage extends StatelessWidget {
const IncrementDecrementPage({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context){

    
    final counterBloc = BlocProvider.of<CounterBloc>(context);



    return Scaffold(
      floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () { 
                  counterBloc.add(CounterIncrement());
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 5,),
              FloatingActionButton(
                onPressed: () { 
                  counterBloc.add(CounterDecrement());
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.minimize),
              ),
            ]
      ),
          
    );
  }
}