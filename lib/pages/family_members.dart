import 'package:flutter/material.dart';
import 'package:language_learning/model/num_color_family(item).dart';
import 'package:language_learning/shared%20_widget/family.dart';

// ignore: must_be_immutable
class Familymember extends StatelessWidget {
  const Familymember({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 223, 219),
      appBar: AppBar(
        title: const Text(
          "Family Members",
          style: TextStyle(fontSize: 21, color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (BuildContext context, int index) {
          return Family(
            item: family[index],
          );
        },
      ),
    );
  }
}
