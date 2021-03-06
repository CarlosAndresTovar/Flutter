
import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    const fontSize30 = TextStyle( fontSize: 30 );

    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('HomeScreen')
        ),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Number clicks', style: fontSize30 ),
            Text( '$counter', style: fontSize30 ),
            ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.add),
        onPressed: () {
          print('Hola mundo: $counter');
          counter++;
        },
      ),
    ); 
  }
  
}