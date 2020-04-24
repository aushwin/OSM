import 'package:flutter/material.dart';
import 'package:verOne/constants.dart';
import 'package:verOne/views/home_view.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Color(kMainBGColor),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    ));
