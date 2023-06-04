import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:secound_task/chat_ui.dart';
import 'package:secound_task/pacakge.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Pickup Date',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(26, 211, 252, 1),
              ),
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
              size: 40,
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
                    size: 40,
                  ),
                )),
          ],
          backgroundColor: Colors.white38,
          // shadowColor: Color.fromARGB(255, 188, 236, 247),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    'When would you like your Pickup',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: IconButton(
                        onPressed: () async {
                          DateTime? datePicked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2022),
                              lastDate: DateTime(2023));

                          if (datePicked != null) {
                            print(
                                'Slected Date : ${datePicked.day}--${datePicked.month}--${datePicked.year}');
                          }
                        },
                        icon: Icon(
                          Icons.date_range,
                          color: Color.fromRGBO(26, 211, 252, 1),
                          size: 50,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: IconButton(
                          onPressed: () async {
                            TimeOfDay? pickedTime = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                              initialEntryMode: TimePickerEntryMode.input,
                            );
                            if (pickedTime != null) {
                              print(
                                  'Selected Time Show: ${pickedTime.hour}--${pickedTime.minute}');
                            }
                          },
                          icon: Icon(
                            Icons.timer,
                            size: 50,
                            color: Color.fromRGBO(26, 211, 252, 1),
                          )),
                    )
                  ],
                ),

                Container(
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 50, left: 10, right: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 110,
                              width: 110,
                              child: Card(
                                child: ListTile(
                                  title: Text(
                                    'Friday',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      // backgroundColor: Color.fromRGBO(26, 211, 252, 1)
                                    ),
                                  ),
                                  subtitle: Text(
                                    '25 july yestrerday',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                elevation: 9,
                                color: Color.fromRGBO(26, 211, 252, 1),
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 110,
                              width: 110,
                              child: Card(
                                child: ListTile(
                                  title: Text(
                                    'Friday',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      // backgroundColor: Color.fromRGBO(26, 211, 252, 1)
                                    ),
                                  ),
                                  subtitle: Container(
                                    child: Text(
                                      '25 july yestrerday',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                                elevation: 7,
                                color: Color.fromRGBO(26, 211, 252, 1),
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 110,
                              width: 110,
                              child: Card(
                                child: ListTile(
                                  title: Text(
                                    'Friday',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      // backgroundColor: Color.fromRGBO(26, 211, 252, 1)
                                    ),
                                  ),
                                  subtitle: Container(
                                    child: Text(
                                      '25 july yestrerday',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                                elevation: 7,
                                color: Color.fromRGBO(26, 211, 252, 1),
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 110,
                              width: 110,
                              child: Card(
                                child: ListTile(
                                  title: Text(
                                    'Friday',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      // backgroundColor: Color.fromRGBO(26, 211, 252, 1)
                                    ),
                                  ),
                                  subtitle: Container(
                                    child: Text(
                                      '25 july yestrerday',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                                elevation: 7,
                                color: Color.fromRGBO(26, 211, 252, 1),
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    'Avalible Time Slots',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     top: 50,
                //     left: 10,
                //   ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 110,
                        child: Card(
                          child: Center(
                            child: Text(
                              '7am -9am',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white),
                            ),
                          ),
                          elevation: 7,
                          color: Color.fromRGBO(26, 211, 252, 1),
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 110,
                        child: Card(
                          child: Center(
                            child: Text(
                              '7am -9am',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                          elevation: 7,
                          color: Colors.white,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 110,
                        child: Card(
                          child: Center(
                            child: Text(
                              '7am -9am',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                          elevation: 7,
                          color: Colors.white,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 10,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 110,
                        child: Card(
                          child: Center(
                            child: Text(
                              '7am -9am',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                          elevation: 7,
                          color: Colors.white,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 110,
                        child: Card(
                          child: Center(
                            child: Text(
                              '7am -9am',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                          elevation: 7,
                          color: Colors.white,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 350,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 8),
                            child: Text(
                              'Repeat Pickup',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                          elevation: 10,
                          color: Colors.white,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'How Often Repeat?',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        margin: EdgeInsets.only(top: 30, left: 20),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: 350,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              'Repeat Pickup',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                          elevation: 10,
                          color: Colors.white,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20, left: 20),
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PackageScreen()));
                          },
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(26, 211, 252, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
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
    );
  }
}
