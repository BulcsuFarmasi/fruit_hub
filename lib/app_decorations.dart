import 'package:flutter/material.dart';
import 'package:fruit_hub/app_colors.dart';

const inputDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    fillColor: inputColor,
    filled: true);
