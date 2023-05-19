import 'package:flutter/material.dart';
import 'package:green_life/sheard.dart';

class ProductScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              child: Image.asset(
                'assets/coca.png.png',
                height: 200.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: kPrimaryColor,child: Icon(Icons.done,color: Colors.white,)),
            title: sharedText(txt: 'Recyclable in RVM'),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'Coca Cola Zero Suger',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,

                    ),
                  ),
                ),
                SizedBox(height: 32.0),
                Text(
                  'product.description',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '\$${'product.price'}',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RatingBar(
                      rating:0.5,
                    ),
                  ],
                )

              ],
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // TODO: Implement buy functionality
              },
              style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
              child: Text('where can i recycle?'),
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final String image;
  final String description;
  final double price;
  final double rating;

  Product({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.rating,
  });
}

class RatingBar extends StatelessWidget {
  final double rating;

  RatingBar({required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.star,
          color: rating >= 1.0 ? Colors.orange : Colors.grey,
        ),
        Icon(
          Icons.star,
          color: rating >= 2.0 ? Colors.orange : Colors.grey,
        ),
        Icon(
          Icons.star,
          color: rating >= 3.0 ? Colors.orange : Colors.grey,
        ),
        Icon(
          Icons.star,
          color: rating >= 4.0 ? Colors.orange : Colors.grey,
        ),
        Icon(
          Icons.star,
          color: rating >= 5.0 ? Colors.orange : Colors.grey,
        ),
      ],
    );
  }
}