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
