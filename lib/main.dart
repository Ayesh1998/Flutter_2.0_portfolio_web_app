import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Portfolio(),
    );
  }
}

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton.icon(
              style: TextButton.styleFrom(
                  textStyle: TextStyle(color: Colors.black54),
                  backgroundColor: Colors.amberAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0))),
              onPressed: () {},
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.send_sharp),
              ),
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Contact me',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
