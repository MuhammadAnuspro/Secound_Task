import 'package:flutter/material.dart';
import 'package:secound_task/chat_ui.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Pickup Date',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(26, 211, 252, 1),
            ),
          ),

          elevation: 9,
          shadowColor: Colors.blueAccent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: Color.fromRGBO(26, 211, 252, 1),
              height: 4.0,
            ),
          ),

          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatUI()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Color.fromRGBO(26, 211, 252, 1),
            ),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.menu,
                    color: Color.fromRGBO(26, 211, 252, 1),
                  ),
                )),
          ],
          backgroundColor: Colors.white38,
          // shadowColor: Color.fromARGB(255, 188, 236, 247),
        ),
        body: FutureBuilder(
          builder: (context, snapshot) {
            return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        height: 180,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Card(
                            elevation: 9,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            // margin: EdgeInsets.all(5),
                            color: Colors.white,

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(left: 130, bottom: 15),
                                  child: ListTile(
                                    title: Text(
                                      'shirt and jeans  Dry and cleaning (PKR 1000)',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(26, 211, 252, 1),
                                      ),
                                    ),
                                    subtitle: Text(
                                      'you will get %10 OFF buy this package  ',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromRGBO(26, 211, 252, 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(right: 10, bottom: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        height: 65,
                                        width: 70,
                                        child: Card(
                                          child: Image.asset(
                                            'assets/wash.png',
                                            width: 20,
                                            height: 20,
                                          ),
                                          elevation: 7,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        color: Colors.white,
                                        height: 65,
                                        width: 70,
                                        child: Card(
                                          child: Image.asset(
                                            'assets/iron.png',
                                            width: 20,
                                            height: 20,
                                          ),
                                          elevation: 7,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        color: Colors.white,
                                        height: 65,
                                        width: 70,
                                        child: Card(
                                          child: Image.asset(
                                            'assets/shirt.png',
                                            width: 20,
                                            height: 20,
                                          ),
                                          elevation: 7,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
