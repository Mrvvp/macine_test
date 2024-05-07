import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:macine_test/selected_page.dart';
import 'package:macine_test/tick_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> shifts = [
    "Morning ",
    "Afernoon ",
    "Night",
  ];
  final TickController tickController = Get.put(TickController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 50,
                left: 10,
              ),
              child: Text(
                'Schedhule working time',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.green,
              height: 50,
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Day',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Shift',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              tickController.toggleTick(0);
                            },
                            child: Obx(() {
                              return Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  color: tickController.tickStates[0].value
                                      ? Colors.green
                                      : Colors.grey.shade100,
                                ),
                                child: tickController.tickStates[0].value
                                    ? const Center(
                                        child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 15,
                                      ))
                                    : null,
                              );
                            }),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Sunday',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Spacer(),
                          const Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Morning',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Afternoon',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Night',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                               SizedBox(
                                height: 10,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          
                          
                          GestureDetector(
                            onTap: () {
                              tickController.toggleTick(1);
                            },
                            child: Obx(() {
                              return Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  color: tickController.tickStates[1].value
                                      ? Colors.green
                                      : Colors.grey.shade100,
                                ),
                                child: tickController.tickStates[1].value
                                    ? const Center(
                                        child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 15,
                                      ))
                                    : null,
                              );
                            }),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Monday',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Spacer(),
                          const Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Morning',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Afternoon',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Night',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                               SizedBox(
                                height: 10,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              tickController.toggleTick(2);
                            },
                            child: Obx(() {
                              return Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  color: tickController.tickStates[2].value
                                      ? Colors.green
                                      : Colors.grey.shade100,
                                ),
                                child: tickController.tickStates[2].value
                                    ? const Center(
                                        child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 15,
                                      ))
                                    : null,
                              );
                            }),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Tuesday',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Spacer(),
                          const Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Morning',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Afternoon',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Night',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                               SizedBox(
                                height: 10,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              tickController.toggleTick(3);
                            },
                            child: Obx(() {
                              return Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  color: tickController.tickStates[3].value
                                      ? Colors.green
                                      : Colors.grey.shade100,
                                ),
                                child: tickController.tickStates[3].value
                                    ? const Center(
                                        child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 15,
                                      ))
                                    : null,
                              );
                            }),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Wednesday',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Spacer(),
                          const Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Morning',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Afternoon',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Night',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                               SizedBox(
                                height: 10,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              tickController.toggleTick(4);
                            },
                            child: Obx(() {
                              return Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  color: tickController.tickStates[4].value
                                      ? Colors.green
                                      : Colors.grey.shade100,
                                ),
                                child: tickController.tickStates[4].value
                                    ? const Center(
                                        child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 15,
                                      ))
                                    : null,
                              );
                            }),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Thursday',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Spacer(),
                          const Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Morning',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Afternoon',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Night',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                               SizedBox(
                                height: 10,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              tickController.toggleTick(5);
                            },
                            child: Obx(() {
                              return Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  color: tickController.tickStates[5].value
                                      ? Colors.green
                                      : Colors.grey.shade100,
                                ),
                                child: tickController.tickStates[5].value
                                    ? const Center(
                                        child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 15,
                                      ))
                                    : null,
                              );
                            }),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Friday',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Spacer(),
                          const Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Morning',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Afternoon',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Night',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                               SizedBox(
                                height: 10,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              tickController.toggleTick(6);
                            },
                            child: Obx(() {
                              return Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  color: tickController.tickStates[6].value
                                      ? Colors.green
                                      : Colors.grey.shade100,
                                ),
                                child: tickController.tickStates[6].value
                                    ? const Center(
                                        child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 15,
                                      ))
                                    : null,
                              );
                            }),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Saturday',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Spacer(),
                          const Text(
                            'Morning',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Afternoon',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Night',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                           const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(onPressed: (){

                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SelectedPage()));
                    }, child: const Text('SCHEDULE'))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
