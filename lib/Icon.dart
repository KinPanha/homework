import 'package:flutter/material.dart';

class IconCustom extends StatefulWidget {
  IconCustom({required this.name, required this.icons, Key? key}) : super(key: key);
  String name;
  IconData icons;

  @override
  State<IconCustom> createState() => _IconCustomState();
}

class _IconCustomState extends State<IconCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 100,
      width: 100,
      // decoration: const BoxDecoration(color: Colors.amber),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.lightGreenAccent[400]),
            child: Icon(widget.icons),
          ),
          Text(
            widget.name,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
