import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Widget titleTextH1(BuildContext context, String text) {
  return AutoSizeText(
    text,
    style: const TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold, fontFamily: "Muli"),
    minFontSize: 24,
    maxFontSize: 32
  );
}