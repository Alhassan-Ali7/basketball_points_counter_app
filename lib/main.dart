import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: PointsCounter(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});


  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDC7500),
        title: const Text(
          'Points Center',
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    '$teamAPoints',
                    style: const TextStyle(
                      fontSize: 150,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints++;
                      });

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDC7500),
                      minimumSize: const Size(
                        150,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Add 1 Point',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints = teamAPoints + 2;
                      });

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDC7500),
                      minimumSize: const Size(
                        150,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Add 2 Points',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints = teamAPoints + 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDC7500),
                      minimumSize: const Size(
                        150,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Add 3 Points',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 500.0,
                child: VerticalDivider(
                  color: Color(0xFFDC7500),
                  thickness: 1.0,
                  indent: 35.0,
                ),
              ),
              Column(
                children: [
                  const Text(
                    'Team B',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    '$teamBPoints',
                    style: const TextStyle(
                      fontSize: 150,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints++;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDC7500),
                      minimumSize: const Size(
                        150,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Add 1 Point',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints = teamBPoints + 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDC7500),
                      minimumSize: const Size(
                        150,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Add 2 Points',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints = teamBPoints + 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDC7500),
                      minimumSize: const Size(
                        150,
                        50,
                      ),
                    ),
                    child: const Text(
                      'Add 3 Points',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFDC7500),
              minimumSize: const Size(
                150,
                50,
              ),
            ),
            child: const Text(
              'Reset',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
