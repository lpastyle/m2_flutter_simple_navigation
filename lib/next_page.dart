import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  final Color color;

  // Ctor
  const NextPage({super.key, required this.color});

  @override
  NextPageState createState() => NextPageState();
  
}

class NextPageState extends State<NextPage> {

  bool showAppBar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // plus possible de revenir sur la home page quand l'AppBar est cachée
      appBar: showAppBar ? AppBar(
        title: const Text("Next Page"),
        backgroundColor: widget.color,
      ) : null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            ElevatedButton(
              onPressed: () => setState(() => showAppBar = ! showAppBar),
              child: Text(showAppBar ? "Hide AppBar" : "Show AppBar")),
             Text("THIS IS THE NEXT PAGE",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium
            ),
          ],
        )
      )
    );
  }

}
