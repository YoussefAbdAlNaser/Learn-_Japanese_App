import 'package:flutter/material.dart';
import 'package:language_learning/pages/colors.dart';
import 'package:language_learning/pages/family_members.dart';
import 'package:language_learning/pages/numbers.dart';
import 'package:language_learning/pages/phrases.dart';
import 'package:language_learning/shared%20_widget/Container(Home).dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 236, 223, 219),
      appBar: AppBar(
        title: const Text(
          "Toku",
          style: TextStyle(fontSize: 21, color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Category(
                textt: "Numbers",
                colorr: Colors.amber,
                oNtap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Numbers()),
                  );
                },
              ),
              Category(
                oNtap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Familymember()),
                  );},
                textt: "Family_Members",
                colorr: Colors.green,
              ),
              Category(
                oNtap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Colorrs()),
                  );},
                textt: "Colors",
                colorr: Colors.purple,
              ),
              Category(
                oNtap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Phrases()),
                  );},
                textt: "Phrases",
                colorr: Colors.blue,
              ),
            ],
          )),
    );
  }
}
