import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Routing and Navigation'),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => Page2());
          Navigator.push(context, route);
        },
        child: const Text('Move to Page 2'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => HomePage());
            Navigator.pop(context);
          },
          child: const Text('Move to HomePage'),
        ),
      ),
    );
  }
}
