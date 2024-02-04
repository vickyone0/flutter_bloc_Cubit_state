import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state/bloc/counter_bloc.dart';
import 'package:flutter_bloc_state/increment_decrement_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  
 
  @override
  Widget build(BuildContext context) {
    
  //final counterCubit = BlocProvider.of<CounterCubit>(context);

    
        return Scaffold(
          appBar: AppBar(
            
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            
            
            title: Text(title),
          ),
          body: Center(
            
            
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
              
                BlocBuilder<CounterBloc,int>(
                  builder: (context, counter){
                    return Text(
                      '$counter',
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  }
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const IncrementDecrementPage()));
                },
                tooltip: 'function page',
                child: const Icon(Icons.navigate_next),
              ),
          
        );
      }
}

