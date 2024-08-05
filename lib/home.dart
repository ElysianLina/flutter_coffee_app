import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: content(context), // Pass context to the content method
    );
  }

  Widget content(BuildContext context) {
    // Accept context as a parameter
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset('assets/coffee.jpg'),
          ),
        ),
        const SizedBox(
          height: 38,
        ),
        Text(
          "CAFFEINATED",
          style: TextStyle(
            color: Colors.brown,
            fontSize: 45,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed("/menu");
          },
          child: Container(
            height: 60,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.brown),
            child: Center(
              child: Text(
                "GET STARTED",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
