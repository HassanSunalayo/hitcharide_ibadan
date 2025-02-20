import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled/package.dart';
import 'package:untitled/ride.dart';
import 'package:untitled/wallet.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  openDatabase(join(await getDatabasesPath(), "todos.db"),
      onCreate: (db, version) {
    return db.execute(
        "CREATE TABLE todos(id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, date INTEGER)");
  }, version: 1);
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Building App",
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
          primaryColor: const Color.fromARGB(255, 201, 0, 50)),
      home: const MyWidget()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        // color: Colors.white,
        // height: height,
        // width: width,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(),
              // height: height * 0.35,
              // width: width,

              //column of two top boxes
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25,
                      right: 15,
                      left: 15,
                    ),
                    child: Row(
                      //spacing boxes
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.gif_box_rounded,
                            color: Colors.green,
                            size: 40,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.gif_box_rounded,
                            color: Colors.green,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //space around ballance container
                  const SizedBox(
                    width: 5,
                  ),
                  //card, ballance , top up
                  Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(10)),
                      Container(
                        padding: const EdgeInsets.only(left: 15),
                        color: const Color.fromARGB(255, 130, 238, 133),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 20)),
                            const Column(
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // Padding(padding: EdgeInsets.all(10)),
                                Text(
                                  "wallet Balance",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "NGN 76.000",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                //  const Padding(padding: EdgeInsets.only(top: 20)),
                                //  const Padding(padding: EdgeInsets.all(10)),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Wallet()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      minimumSize: const Size(54, 45),
                                      elevation: 0),
                                  child: const Text(
                                    "Top up",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Wallet()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      minimumSize: const Size(54, 45),
                                      elevation: 0),
                                  child: const Text(
                                    "Withdraw",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //spacing balance card
            const SizedBox(height: 10),
            //what's your plan section
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "what's your plan?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            //spacing sections
            const SizedBox(height: 10),
            //navigation, ride/send package cards section
            Row(
              children: [
                //responsible for margin for the two cards
                const Padding(padding: EdgeInsets.all(7)),
                Container(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 5, bottom: 5),
                  color: const Color.fromARGB(255, 130, 238, 133),
                  child: Column(
                    children: [
                      const Text(
                        "Hitch a ride",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "get ride",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                          Card(
                            color: Colors.black,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Ride()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  minimumSize: const Size(54, 45),
                                  elevation: 0),
                              child: const Text(
                                "Proceed",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                //spacing between two boxes ride | send package
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 12, right: 10, top: 5, bottom: 5),
                  color: const Color.fromARGB(255, 130, 238, 133),
                  child: Column(
                    children: [
                      const Text(
                        "Send a package",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "get ride",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                          Card(
                            color: Colors.black,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Package()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  minimumSize: const Size(54, 45),
                                  elevation: 0),
                              child: const Text(
                                "Proceed",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            //space between cards
            const SizedBox(
              height: 15,
              width: 7,
            ),
            //ads cards
            Container(
              padding: const EdgeInsets.only(
                  right: 10, left: 10, top: 25, bottom: 25),
              color: const Color.fromARGB(255, 130, 238, 133),
              child: const Center(
                child: Text(
                  "Ads",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // const Padding(padding: EdgeInsets.only(left: 2)),
                const SizedBox(
                  width: 1,
                ),
                const Text(
                  "Activity history",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(right: 12)),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "see all",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    )),
              ],
            ),
            const SizedBox(height: 5),
            //activity history lists section
            Card(
              color: const Color.fromARGB(255, 130, 238, 133),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //row of icon and rider's name
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.gif_box_rounded,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Banji Adegbite",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "rating",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      //balance /date column
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "NGN 5,200",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "May, 23,29024 10am",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  //divider
                  const Divider(
                    color: Color.fromARGB(255, 92, 89, 89),
                    height: 10,
                    thickness: 1,
                  ),
                  //destination declaration section
                  const Column(
                    children: [
                      //first row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "from",
                              ),
                              Column(
                                children: [
                                  Text(
                                    "to",
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      //second row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Challenge area, Ilorin, Kwara State",
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Challenge area, Ilorin, Kwara State",
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
