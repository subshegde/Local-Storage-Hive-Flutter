import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // reference our box
  final myBox = Hive.box('myBox');


  // write data

  void writeData(){
    myBox.put(1, 'Sub');
  }

  //read data
  void readData(){
    print(myBox.get(1));
  }


  // delete data
  void deleteData(){
    myBox.delete(1);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Center(child: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
          MaterialButton(
            color: Colors.blue[200],
          onPressed: (){
            writeData();
          },
          child: const Text('Write'),
          ),
          MaterialButton(
            color: Colors.blue[200],
            onPressed: (){
              readData();
            },
          child: const Text('Read'),
          ),
          MaterialButton(
            color: Colors.blue[200],
            onPressed: (){deleteData();},
          child: const Text('Delete'),
          )
        ],),
      ),)),
    );
  }
}