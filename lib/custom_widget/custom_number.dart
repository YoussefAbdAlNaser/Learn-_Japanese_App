// ignore_for_file: must_be_immutable

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/model/num_color_family(item).dart';

class CustomNumbe extends StatelessWidget {
  CustomNumbe({
    required this.index,
    super.key,
  });
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xFFEf9235),
      child: Row(
        children: [
          Container(
              color: const Color(0xFFfff6dc),
              child: Image.asset(numbers[index].pathImage!)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  numbers[index].textjp!,
                  style: const TextStyle(fontSize: 17, color: Colors.white),
                ),
                Text(numbers[index].textEn!,
                    style: const TextStyle(fontSize: 17, color: Colors.white)),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource(numbers[index].sound!));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
