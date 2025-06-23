import 'package:flutter/material.dart';

class PowerstatComponent extends StatefulWidget {
  final String title;
  final String value;

  const PowerstatComponent({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  State<PowerstatComponent> createState() => _PowerstatComponentState();
}

class _PowerstatComponentState extends State<PowerstatComponent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: double.parse(widget.value),
                width: 20,
                color: getColorByStat(widget.title),
              ),
              Text(
                widget.title,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color getColorByStat(String title) {
    return switch (title) {
      "Power" => Colors.red,
      "Intelligence" => Colors.blue,
      "Strength" => Colors.yellow,
      "Speed" => Colors.green,
      "Durability" => Colors.blueGrey,
      "Combat" => Colors.black,
      _ => Colors.black,
    };
  }
}
