import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World Travel Title",
      home: Scaffold(
        appBar: AppBar(title: Text("Hello world travel")),
        body: Center(
          child: Column(
            children: [
              Text(
                'Hello world travel',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Text(
                'Discover the world',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
              Image.network(
                'https://media-cdn.tripadvisor.com/media/photo-s/0c/6a/e4/48/bukit-rindu-alam-tanjung.jpg',
                height: 250,
              ),
              ElevatedButton(
                child: Text('Contact Us'),
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Contact Us'),
                      content: Text('Mail us at hello@world.com'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Close'),
                          onPressed: () => Navigator.of(context).pop(),
                        )
                      ],
                    );
                  },
                ),
              ),
            ], // Tanda kurung siku penutup ']' ditambahkan didieu
          ),
        ),
      ),
    );
  }
}