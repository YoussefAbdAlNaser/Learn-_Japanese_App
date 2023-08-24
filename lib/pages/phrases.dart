import 'package:flutter/material.dart';
import 'package:language_learning/model/itempharese.dart';
import 'package:language_learning/shared%20_widget/phrases.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 223, 219),
      appBar: AppBar(
        title: const Text(
          "Phrases",
          style: TextStyle(fontSize: 21, color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: pharses.length,
        itemBuilder: (BuildContext context, int index) {
          return Pharses(
            item:pharses[index],
          );
        },
      ),
    );
  }
}
