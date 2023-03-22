import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List img = [
    'assets/images/beach1.jpg',
    'assets/images/beach3.jpg',
    'assets/images/here.jpg',
    'assets/images/lack.jpg',
    'assets/images/shiva.jpg',
    'assets/images/this.jpg',
    'assets/images/rain.jpg',
    'assets/images/red.jpg',
  ];
  List quote = [
    'Nature is the art of God.',
    'Go where you feel most alive.',
    'Passion Led Us.',
    'Nature is the art of God.',
    'Shiva',
    'This is the sign',
    'Rain',
    'Red'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade800,
          title: Text('flutter staggered grid view'),
        ),
        body: MasonryGridView.builder(
          itemCount: img.length,
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('${img[index]}')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('${quote[index]}'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
