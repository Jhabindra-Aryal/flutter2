import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List img = [
    'https://images.pexels.com/photos/6081496/pexels-photo-6081496.png?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/7763793/pexels-photo-7763793.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/2967394/pexels-photo-2967394.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Container(
        child: CarouselSlider.builder(
            itemCount: img.length,
            options: CarouselOptions(
              height: 400,
              enableInfiniteScroll: true,
              autoPlay: true,
              enlargeCenterPage: true,
              scrollDirection: Axis.vertical,
            ),
            itemBuilder: (BuildContext context, int itemIndex, _) => Container(
                  child: Image.network(img[itemIndex]),
                )),
      ),
    );
  }
}
