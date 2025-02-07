import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:local_storage_hive/pages/home_page.dart';

void main() async{
  // initialize hive
  await Hive.initFlutter();

  // open the box
  var box = await Hive.openBox('mybox');



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Local Storage Hive',
      
      home: HomePage(),
    );
  }
}
