import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_portpolio_web_app/widgets/contact_button.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage("https://picsum.photos/200/300"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Ayesh Lakshan',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
        actions: [
          ContactButton(
            buttonText: "Contact me",
            buttonIcon: Icon(Icons.send_sharp),
            onPressedButton: () {
              print("contact me");
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Body(),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Image.asset("headshot.png"),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "I\'m Ayesh Lakshan. \nA software Developer. ",
                              style: TextStyle(
                                  fontSize: 44.0, color: Colors.black54),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 70.0,
                                  vertical: 60.0,
                                ),
                                child: ContactButton(
                                  buttonText: "Drop me a line",
                                  buttonIcon: Icon(Icons.mail_outline),
                                  onPressedButton: () {
                                    print("contact me");
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          flex: 2,
        ),
        Expanded(
          child: Container(
            color: Colors.white,
          ),
          // flex: 3,
        )
      ],
    );
  }
}
