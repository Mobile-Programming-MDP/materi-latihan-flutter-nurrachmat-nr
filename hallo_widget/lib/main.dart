import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello Widget",
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: FirstScreen()
      home: const WidgetDemo(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nur Rachmat'),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            )),
      ), //Appbar

      body: const Center(
        child: Text("Hello Nur Rachmat"),
      ),
    );
  }
}

class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Demo'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Ini adalah contoh penggunaan Container',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Tombol Elevated'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber),
              Text('Rating: 4.5'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network(
              'https://picsum.photos/id/7/300/200',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
