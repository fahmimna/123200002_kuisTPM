import 'dart:io';
import 'package:flutter/material.dart';
import 'coffe_menu.dart';

class HalamanDetail extends StatefulWidget {
  final CoffeeMenu person;
  const HalamanDetail({Key? key, required this.person}) : super(key: key);

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.person.name),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.lightBlueAccent,
                Colors.white70,
              ],
            ),
          ),
          child: Column(children: [
            Container(
              child: Text(
                widget.person.name,
                style: TextStyle(fontSize: 20),
              ),
              padding: EdgeInsets.all(5),
            ),
            Container(
              child: Text(
                'Name :      ' + widget.person.name,
              ),
              padding: EdgeInsets.all(5),
            ),
            Container(
              padding: EdgeInsets.all(2),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  child: Image.network(widget.person.imageUrls[index]),
                ),
              ),
            ),
            Container(
              child: Text('Description :      ' + widget.person.description),
              padding: EdgeInsets.all(5),
            ),
            Container(
              child: Text('Price :      ' + widget.person.price),
              padding: EdgeInsets.all(5),
            ),
            Container(
              child: Text('Ingredients :      ' + widget.person.ingredients),
              padding: EdgeInsets.all(5),
            ),
            Container(
              child: Text('Nutrition :      ' + widget.person.nutrition),
              padding: EdgeInsets.all(5),
            ),
            Container(
              child:
                  Text('Review Average :      ' + widget.person.reviewAverage),
              padding: EdgeInsets.all(5),
            ),
            Container(
              child: Text('Review Count :      ' + widget.person.reviewCount),
              padding: EdgeInsets.all(5),
            ),
            Container(
              child: Text('Link Store'),
              padding: EdgeInsets.all(5),
            ),
            Container(
              child : ElevatedButton(
                onPressed: () {
                },
                child: Text(widget.person.linkStore),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
