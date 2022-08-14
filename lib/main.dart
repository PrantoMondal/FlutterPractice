import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Homework'),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  'https://miro.medium.com/max/1400/0*s7of7kWnf9fDg4XM.jpeg',
                  height: 350,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: const Text('ListTile with red background'),
                  tileColor: Colors.grey,
                  subtitle: Text('afjasklfja'),
                  trailing: Icon(Icons.star),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                ),
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 2.0),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                    blurRadius: 10,
                  spreadRadius: 2,
                  color: Colors.grey
                )],
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.green,
                    Colors.deepOrange,
                  ],
                ),
                color: Colors.blue
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera),
                  Text('Camera'),
                ],
              ),
            )
              ],
            ),
          ),
        ),
      ),
    ),
  ));
}
