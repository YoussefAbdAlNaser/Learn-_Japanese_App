import 'package:flutter/material.dart';
import 'package:language_learning/model/num_color_family(item).dart';
import 'package:language_learning/widgets_custom/custom_number.dart';

class Numbers extends StatelessWidget {
 const Numbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 223, 219),
      appBar: AppBar(
        title: const Text(
          "Numbers",
          style: TextStyle(fontSize: 21, color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return  CustomNumbe(index: index,);
        },
      ),
    );
  }
}


