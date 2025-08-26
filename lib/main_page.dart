import 'package:bmical/constants.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int height = 100;
  int weight = 50;
  String gender = '';
  double get bmi => weight / ((height / 100) * (height / 100));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 36, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print('male');
                    setState(() {
                      gender = 'M';
                    });
                  },
                  child: Container(
                    color: gender == 'M' ? Colors.red : Colors.amber,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Male'),

                        Icon(Icons.male, size: 140, color: Colors.blue),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      gender = 'F';
                    });
                  },
                  child: Container(
                    color: gender == 'F' ? Colors.red : Colors.amber,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('female '),
                        Icon(
                          Icons.female,
                          size: 140,
                          color: const Color.fromARGB(255, 218, 97, 127),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        '$height',
                        style: TextStyle(color: kTextColor, fontSize: 50),
                      ),
                      Text('Height'),
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                height++;
                              });
                              print(height);
                            },
                            backgroundColor: Colors.amber,
                            elevation: 4,
                            hoverColor: Colors.red,
                            child: Icon(Icons.add),
                          ),
                          SizedBox(width: 20),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                height--;
                              });
                              print(height);
                            },
                            backgroundColor: Colors.amber,
                            elevation: 4,
                            hoverColor: Colors.red,
                            child: Icon(Icons.remove),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('$weight', style: kInputLabelColor),
                      Text('Weight'),
                      Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                              print(weight);
                            },
                            backgroundColor: Colors.amber,
                            elevation: 4,
                            hoverColor: Colors.red,
                            child: Icon(Icons.add),
                          ),
                          SizedBox(width: 20),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                              print(weight);
                            },
                            backgroundColor: Colors.amber,
                            elevation: 4,
                            hoverColor: Colors.red,
                            child: Icon(Icons.remove),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Column(
              children: [
                Text('BMI', style: kInputLabelColor),
                Text(
                  '${bmi.toStringAsFixed(1)}',
                  style: TextStyle(color: kOutputTextcolor, fontSize: 80),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onHeightMinus() {
    print('minus clicked');
  }
}
