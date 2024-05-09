import 'package:flutter/material.dart';
import 'shoe.dart';
import 'shoe_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Shoe> shoes = [
      Shoe(
          name: 'Nike SB Zoom Blazer',
          sub: 'Mid Premium',
          image: 'assets/images/sepatu1.png',
          price: '₹8,795'),
      Shoe(
          name: 'Nike Air Zoom Pegasus',
          sub: 'Mens Road Running Shoes',
          image: 'assets/images/sepatu2.png',
          price: '₹9,995'),
      Shoe(
          name: 'Nike ZoomX Vaporfly',
          sub: 'Mens Road Racing Shoes',
          image: 'assets/images/sepatu1.png',
          price: '₹19,995'),
      Shoe(
          name: 'Nike Air Force 1 S50',
          sub: 'Older Kids Shoe',
          image: 'assets/images/sepatu2.png',
          price: '₹6,295'),
      Shoe(
          name: 'Nike Waffle One',
          sub: 'Mens Shoes',
          image: 'assets/images/sepatu1.png',
          price: '₹8,295'),
    ];

    return MaterialApp(
      title: 'Shoe Store',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
            child: AppBar(
              title: const Text(
                'Shoes',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              actions: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('/images/pro.jpeg'),
                  radius: 20,
                ),
                SizedBox(width: 16)
              ],
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              elevation: 0,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView.builder(
            itemCount: shoes.length,
            itemBuilder: (context, index) {
              final colors = [
                Colors.purple[50],
                Colors.blue[100],
                Colors.green[100],
                Colors.red[100],
                Colors.yellow[100]
              ];
              return Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: colors[index % colors.length],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ShoeWidget(shoe: shoes[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}
