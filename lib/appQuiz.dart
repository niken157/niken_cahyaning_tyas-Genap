import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppQuiz extends StatefulWidget {
  const AppQuiz({super.key});

  @override
  State<AppQuiz> createState() => _AppQuizState();
}

class _AppQuizState extends State<AppQuiz> {
  int angka=0;
  String hasil = ' ';
  void tekanAku(){
    setState(() {
      angka +=1;
      hasil = 'Bilangan Prima = ';
      if (angka>45) {
        angka=0;
      }
      for (int i = 1; i < angka; i++) {
        int bil=0;
        for (int j = 1; j <= i; j++) {
          if (i%j==0) {
            bil=bil+1;
          }
        }
        if (bil==2) {
          hasil+='$i, ';
        }
      }
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genap',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () => tekanAku(),
        child: Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Niken Cahyaning Tyas Genap'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Angka: $angka', style: TextStyle(color: Colors.blue),),
              //Text('Angka: $angka adalah bilangan Prima ? $hasil', style: TextStyle(color: Colors.orange),),
              Text(
              '$hasil',
              style: TextStyle(color: Colors.orange),
            ),
            ],
          ),
        ),
      ),
    );
  }
}