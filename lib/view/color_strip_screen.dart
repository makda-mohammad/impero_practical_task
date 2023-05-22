import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impero_practical_task/constants/color_constants.dart';

class ColorStripScreen extends StatefulWidget {
  const ColorStripScreen({Key? key}) : super(key: key);

  @override
  State<ColorStripScreen> createState() => _ColorStripScreenState();
}

class _ColorStripScreenState extends State<ColorStripScreen> {
  String selectedHardness = '0';
  String selectedTotalChlorine = '0';
  String selectedFreeChlorine = '0';
  String selectedPH = '0';
  String selectedAlkalinity = '0';
  String selectedCyanuricAcid = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Next'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Test Strip',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.indigo),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      height: Get.height * 0.75,
                      decoration: BoxDecoration(border: Border.all(color: primaryColor)),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: const Alignment(0, 0.07),
                              child: Container(
                                decoration: const BoxDecoration(color: Colors.indigo),
                                height: 20,
                                width: 25,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: const Alignment(0, 0.07),
                              child: Container(
                                decoration: const BoxDecoration(color: Colors.redAccent),
                                height: 20,
                                width: 25,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: const Alignment(0, 0.07),
                              child: Container(
                                decoration: const BoxDecoration(color: Colors.redAccent),
                                height: 20,
                                width: 25,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: const Alignment(0, 0.07),
                              child: Container(
                                decoration: const BoxDecoration(color: Colors.redAccent),
                                height: 20,
                                width: 25,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: const Alignment(0, 0.07),
                              child: Container(
                                decoration: const BoxDecoration(color: Colors.redAccent),
                                height: 20,
                                width: 25,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: const Alignment(0, 0.07),
                              child: Container(
                                decoration: const BoxDecoration(color: Colors.redAccent),
                                height: 20,
                                width: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 9,
                    fit: FlexFit.tight,
                    child: Container(
                      height: Get.height * 0.75,
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'Total Hardness',
                                          style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '(ppm)',
                                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)),
                                      constraints: const BoxConstraints(minWidth: 60),
                                      padding: const EdgeInsets.all(5),
                                      child: Center(child: Text(selectedHardness)),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                            BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                            BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('110'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                            BoxDecoration(color: Colors.deepPurpleAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('250'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                            BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('500'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                            BoxDecoration(color: Colors.purpleAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('1000'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'Total Chlorine',
                                          style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '(ppm)',
                                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)),
                                      constraints: const BoxConstraints(minWidth: 60),
                                      padding: const EdgeInsets.all(5),
                                      child: Center(child: Text(selectedTotalChlorine)),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Flexible(

                            flex: 1,
                            fit: FlexFit.tight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'Free Chlorine',
                                          style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '(ppm)',
                                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)),
                                      constraints: const BoxConstraints(minWidth: 60),
                                      padding: const EdgeInsets.all(5),
                                      child: Center(child: Text(selectedFreeChlorine)),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Flexible(

                            flex: 1,
                            fit: FlexFit.tight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'pH',
                                          style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '(ppm)',
                                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)),
                                      constraints: const BoxConstraints(minWidth: 60),
                                      padding: const EdgeInsets.all(5),
                                      child: Center(child: Text(selectedPH)),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'Total Alkalinity',
                                          style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '(ppm)',
                                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)),
                                      constraints: const BoxConstraints(minWidth: 60),
                                      padding: const EdgeInsets.all(5),
                                      child: Center(child: Text(selectedAlkalinity)),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'Cyanuric Acid',
                                          style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '(ppm)',
                                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)),
                                      constraints: const BoxConstraints(minWidth: 60),
                                      padding: const EdgeInsets.all(5),
                                      child: Center(child: Text(selectedCyanuricAcid)),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration:
                                                BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
                                            height: 20,
                                          ),
                                          const Text('0'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
