import 'package:coffeeapp/details.dart';
import 'package:coffeeapp/home.dart';
import 'package:coffeeapp/menu.dart';
import 'package:coffeeapp/summary.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: "/Summary",
        routes: {
          "/": (context) => Home(),
          "/menu": (context) => Menu(),
          "/details": (context) => Details(),
          "/Summary": (context) => Summary(),
        }));
