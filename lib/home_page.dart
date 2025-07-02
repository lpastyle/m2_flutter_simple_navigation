import 'package:flutter/material.dart';
import 'package:m2_flutter_simple_navigation/next_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  get color => null;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'THIS THE HOME PAGE',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {
                const nextPage =  NextPage(color:  Colors.lightGreenAccent);
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext buildContext) => nextPage));
              },
              child: const Text("Go to Next Page")
            )
          ]
        ),
      ),
    );
  }
}
