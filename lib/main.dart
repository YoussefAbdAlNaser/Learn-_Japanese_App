import 'package:flutter/material.dart';
import 'package:language_learning/pages/Home_page.dart';
void main() {
  runApp(const Toku());
}
 
class Toku extends StatelessWidget {
  const Toku({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner:false ,
    );
  }
}
