import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state/bloc/counter_bloc.dart';
import 'package:flutter_bloc_state/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
      ],
       child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

