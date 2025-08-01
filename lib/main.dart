import 'package:flutter/material.dart';
void main(){
  runApp(myprogram());
}


  class myprogram extends StatelessWidget {
    const myprogram ({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
      home: CounterScreen());

    }
  }
  class CounterScreen extends StatefulWidget {
    const CounterScreen({super.key});

    @override
    State<CounterScreen> createState() => _CounterScreenState();
  }

  class _CounterScreenState extends State<CounterScreen> {
    @override
    int count = 0;
    void incrementCounter(){
      setState((){
        count++;
  });
  }
  int negativenumber = 0;
    void decrementCounter() {
      setState(() {
        negativenumber--;
      });
    }
    Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(title: Text('StatefulWidget')),
      body: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Button pressed $count time', style: TextStyle(fontSize: 20)),
        SizedBox(height: 20),
        ElevatedButton(onPressed: incrementCounter,
            child: Text('Increment')
        ),SizedBox(height: 20,),
        Text('button pressed $negativenumber time', style:TextStyle(fontSize: 20)) ,SizedBox(height: 20,),
        ElevatedButton(onPressed: decrementCounter, child: Text('Decrement'),
        ),
      ],
      ),
      ),
      );
    }
  }







