import 'package:flutter/material.dart';

OutlineInputBorder customOutlineBorder(Color color) {

    return OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: color),
        borderRadius: BorderRadius.circular(30),
      );
  }