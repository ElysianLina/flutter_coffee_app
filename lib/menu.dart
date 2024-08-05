import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> coffeeTitle = [
      "Espresso",
      "Cappuccino",
      "Latte",
      "Mocha",
      "Macchiato"
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Center the title
        title: Text(
          "MENU",
          style: TextStyle(
            color: Colors.brown,
            fontStyle: FontStyle.italic,
            fontSize: 40,
          ),
        ),
        backgroundColor: Colors.brown[50],
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.search,
              color: Colors.brown,
              size: 40,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
      ]),
      body: content(coffeeTitle),
    );
  }

  Widget content(List<String> coffeeTitle) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text.rich(
            TextSpan(
                text: "It's Great ",
                style: TextStyle(fontSize: 40, color: Colors.brown[900]),
                children: [
                  TextSpan(
                    text: "Day for Coffee.",
                    style: TextStyle(color: Colors.brown, fontSize: 40),
                  )
                ]),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ListView.builder(
            itemCount: coffeeTitle.length,
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  leading: Image.asset(
                    "assets/coffee_cup.jpeg",
                    width: 25.0,
                    height: 25.0,
                  ),
                  title: Text(
                    coffeeTitle[index],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed("/details"),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      size: 30,
                    ),
                  ),
                ),
              );
            }))
      ],
    );
  }
}
