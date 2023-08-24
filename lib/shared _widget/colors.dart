import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/model/num_color_family(item).dart';

// ignore: must_be_immutable
class Colorr extends StatelessWidget {
 const Colorr({
    Key? key,
    required this.item,
  }) : super(key: key);
  final InfoModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromARGB(255, 133, 21, 143),
      child: Row(
        children: [
          Container(
              color: const Color(0xFFfff6dc), child: Image.asset(item.pathImage!)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.textjp!,
                  style: const TextStyle(fontSize: 17, color: Colors.white),
                ),
                Text(item.textEn!,
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
                onPressed: () {
                  final player = AudioPlayer();
                   player.play(AssetSource(item.sound!));
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
