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
    );
  }
}
