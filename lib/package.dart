import 'package:flutter/material.dart';

class Package extends StatefulWidget {
  const Package({super.key});

  @override
  State<Package> createState() => _PackageState();
}

class _PackageState extends State<Package> {
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
              height: height * 0.10,
              width: width,

              //column of two top boxes
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
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
                  const SizedBox(
                    height: 30,
                  ),
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
                    height: height * 0.90,
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Package details",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          "Enter the package details to allow for delivery.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Padding(
                            padding:
                                EdgeInsets.only(top: 10, right: 15, left: 15)),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Sender\'s name',
                                    labelText: 'Sender\'s name'),
                              ),
                              const TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Sender\'s phone number',
                                    labelText: 'Sender\'s phone number'),
                              ),
                              const TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Receiver\'s name',
                                    labelText: 'Receiver\'s name'),
                              ),
                              const TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Receivers\'s phone number',
                                    labelText: 'Receivers\'s phone number'),
                              ),
                              const TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Receiver\'s location',
                                    labelText: 'Receiver\'s location'),
                              ),
                              const TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Estimate package weight',
                                    labelText: 'Estimate package weight'),
                              ),
                              const TextField(
                                minLines: 2,
                                maxLines: null,
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Package description',
                                    labelText: 'Package description'),
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
          ],
        ),
      ),
    );
  }
}
