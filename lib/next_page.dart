import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
final Color color;

  // Ctor
  const NextPage({super.key, required this.color});

  @override
  NextPageState createState() => NextPageState();
  
}

class NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page suivante"),
          backgroundColor: widget.color,
        ),
        body: const Center(
          child: Text("CECI EST LA PAGE SUIVANTE"),
        )
    );
  }

}
