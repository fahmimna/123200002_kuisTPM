import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'coffe_menu.dart';
import 'detail_coffe.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Menu'),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: coffeeList.length,
          itemBuilder: (context, index) {
            final person = coffeeList[index];

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HalamanDetail(person: person)),
                      );
                    },
                    title: Text(person.name),
                    subtitle: Text(person.price),
                    leading: Image.network(
                      person.imageUrls[0],
                      fit: BoxFit.cover,
                      width: 300,
                      height: 200,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
