import 'package:flutter/material.dart';

class Otherride extends StatefulWidget {
  const Otherride({super.key});

  @override
  State<Otherride> createState() => _OtherrideState();
}

class _OtherrideState extends State<Otherride> {
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
              height: height * 0.30,
              width: width,

              //column of two top boxes
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
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
                          onPressed: () {},
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
              padding: const EdgeInsets.only(top: 20, left: 19),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 130, 238, 133),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              height: height * 0.70,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Other ride details",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    "fill number of passengers and leave comment if needed.",
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
                        onPressed: () {},
                        child: const Text(
                          "Hitch a ride",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
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
                  const Padding(
                      padding: EdgeInsets.only(top: 20, right: 15, left: 15)),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Number of passenger',
                              labelText: 'Number of passenger'),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Do you have luggage?',
                              labelText: 'Do you have luggage?'),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Pickup location',
                              labelText: 'Pickup location'),
                        ),
                        const TextField(
                          minLines: 2,
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Comment (optional)',
                              labelText: 'Comment (optional)'),
                        ),

                        // space form field and button

                        const SizedBox(height: 5),

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
