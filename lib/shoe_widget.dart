import 'package:flutter/material.dart';
import 'shoe.dart';

class ShoeWidget extends StatelessWidget {
  final Shoe shoe;

  const ShoeWidget({Key? key, required this.shoe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  shoe.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  shoe.sub,
                  style: TextStyle(
                      fontSize: 14, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                SizedBox(height: 15),
                Text(
                  shoe.price,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ],
            ),
          ),
          Image.network(
            shoe.image,
            width: 170,
            height: 130,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
