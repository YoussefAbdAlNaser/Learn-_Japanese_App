import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/model/itempharese.dart';


class Pharses extends StatelessWidget {

 const Pharses({
    Key? key,
    required this.item,
  }) : super(key: key);
  final InfoModelph item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromARGB(255, 34, 85, 161),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
            padding: const EdgeInsets.only(right: 7.0),
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
