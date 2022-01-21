import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customTextStyle(
        {required String label,
        Color color = Colors.white,
        double fontSize = 14}) =>
    Text(
      label,
      style: TextStyle(color: color, fontSize: fontSize),
    );

Widget cutomsaleCard(String count, String label) => Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          customTextStyle(label: count),
          customTextStyle(label: label, color: Colors.white54),
        ],
      ),
    );
