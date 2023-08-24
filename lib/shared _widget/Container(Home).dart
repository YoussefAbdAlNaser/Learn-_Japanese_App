import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  String? textt;
  Color? colorr;
  VoidCallback? oNtap;
  Category({super.key, required this.textt, required this.colorr,required this.oNtap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(left: 17),
      alignment: Alignment.center,
      color: colorr!,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textt!,
            style: const TextStyle(fontSize: 23, color: Colors.white),
          ),
          IconButton(
            onPressed: oNtap,
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 23,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
