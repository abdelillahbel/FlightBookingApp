import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning"),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Book Tickets")
                      ],
                    ),
                    Container(
                      color: Colors.red,
                      width: 100,
                      height: 70,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("text 1"), Text("text 2")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
