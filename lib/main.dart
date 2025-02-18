import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showFirstImage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Лабораторная работа 3'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/1.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
              ),
              Container(
                color: Colors.black.withOpacity(0.5),
                width: double.infinity,
                height: 300,
                child: Center(
                  child: Text(
                    'Добро пожаловать в Flutter!',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/images/2.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Показан SnackBar!'),
              ));
            },
            child: Text(
              'Показать SnackBar',
              style: TextStyle(fontSize: 16),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              fixedSize: Size(200, 50),
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
            },
            child: Text(
              'Перейти на второй экран',
              style: TextStyle(fontSize: 16),
            ),
            style: TextButton.styleFrom(
              foregroundColor: Colors.green,
              fixedSize: Size(200, 50),
            ),
          ),
          SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              setState(() {
                _showFirstImage = !_showFirstImage;
              });
            },
            child: Text(
              'Переключить изображение',
              style: TextStyle(fontSize: 16),
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              side: BorderSide(color: Colors.black),
              fixedSize: Size(200, 50),
            ),
          ),
        ],
      ),
    );
  }
}
