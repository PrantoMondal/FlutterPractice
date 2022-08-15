import 'package:flutter/material.dart';

import 'custom_container.dart';

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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListTile(
                    leading: Icon(Icons.favorite),
                    title: const Text('ListTile with red background'),
                    tileColor: Colors.grey,
                    subtitle: Text('afjasklfja'),
                    trailing: Icon(Icons.star),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyContainer(child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.camera,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Camera'),
                      ],
                    ), ),
                    MyContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Share'),
                        ],
                      ),
                    ),
                    MyContainer(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.navigation_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Navigation'),
                      ],
                    ),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ));
}
