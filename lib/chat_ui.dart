import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:secound_task/homescreen.dart';
import 'package:secound_task/pacakge.dart';

class ChatUI extends StatelessWidget {
  const ChatUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.menu),
              )),
        ],
        backgroundColor: Color.fromRGBO(26, 211, 252, 1),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                'assets/vector.jpg',
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 50, left: 40),
              child: ListTile(
                title: Text(
                  "Hi There!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24),
                ),
                subtitle: Text(
                  "Welcome to Online Service. How Can we help you todays?",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 55),
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280),
              child: ListView.builder(itemBuilder: (_, idx) {
                if (idx % 3 == 0) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '08: 50 pm',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(8),
                        constraints: BoxConstraints(
                          maxWidth: 200,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(26, 211, 252, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Hi My name is Muhammad Anas',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                }
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(8),
                      constraints: BoxConstraints(
                        maxWidth: 200,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Hi My name is Muhammad Anas',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                );
              }),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 4,
                      margin: EdgeInsets.only(left: 15, right: 15),
                      color: Colors.white,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "write a reply...",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.emoji_emotions,
                            color: Colors.grey,
                          ),
                          suffixIcon: SizedBox(
                            width: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.camera_alt),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.attach_file),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PackageScreen()));
                    },
                    backgroundColor: Color.fromRGBO(26, 211, 252, 1),
                    focusColor: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
