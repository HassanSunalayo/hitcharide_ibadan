import 'package:flutter/material.dart';
import 'package:untitled/package.dart';
// ignore: unused_import
import 'package:untitled/todos_view.dart';
import 'package:untitled/wallet.dart';

import 'todo.dart';
import 'package:untitled/otherride.dart';

class Ride extends StatefulWidget {
  const Ride({super.key});

  @override
  State<Ride> createState() => _RideState();
}

class _RideState extends State<Ride> {
  late Todo _todo;
  String name = "";
  int quantity = 0;
  int date = 0;

  addTodo() async {
    if (name.isNotEmpty) {
      _todo = Todo(name: name, quantity: quantity, date: date);
      DbHelper helper = DbHelper();
      await helper.insertTodo(_todo);
      setState(() {
        _todo;
      });
    } else {
      const Text("You can't create an empty Todo");
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      //top container
      body: Container(
        color: Colors.white,
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(),
              height: height * 0.35,
              width: width,

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

                  //wallet box
                  // ignore: avoid_unnecessary_containers
                  Container(
                    color: const Color.fromARGB(255, 130, 238, 133),
                    width: 300,
                    height: 77,
                    padding: const EdgeInsets.only(bottom: 12, top: 12),
                    margin: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Column(
                          children: [
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
                        const SizedBox(
                          width: 53,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              minimumSize: const Size(45, 35),
                              elevation: 0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Wallet()),
                            );
                          },
                          child: const Text(
                            "Top up",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //bottom boxes
            // Padding(
            //   padding: const EdgeInsets.only(
            //     // top: 25,
            //     right: 15,
            //     left: 15,
            //   ),
            //   child: Row(
            //     //spacing boxes
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       InkWell(
            //         onTap: () {},
            //         child: const Icon(
            //           Icons.sort,
            //           color: Colors.green,
            //           size: 40,
            //         ),
            //       ),
            //       InkWell(
            //         onTap: () {},
            //         child: const Icon(
            //           Icons.sort,
            //           color: Colors.green,
            //           size: 40,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

//bottom container
            Container(
              padding: const EdgeInsets.only(top: 15, left: 19),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 130, 238, 133),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              height: height * 0.65,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "What's your plan?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    "select your plans to get connected with a driver.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 20)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Otherride()),
                          );
                        },
                        child: const Text(
                          "Hitch a ride",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Package()),
                          );
                        },
                        child: const Text(
                          "Send a package",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // const Row(

                  // )
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const AbsorbPointer(
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Date',
                                labelText: 'Date'),
                          ),
                        ),

                        const TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Time',
                              labelText: 'Time'),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Pickup location',
                              labelText: 'Pickup location'),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Destination',
                              labelText: 'Comment '),
                        ),

                        // space form field and button

                        const SizedBox(height: 10),

                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              minimumSize: const Size(545, 45),
                              elevation: 0),
                          child: const Text(
                            "Create request",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
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
