import 'package:basketball_points_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_points_counter_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
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
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                            buttonNumber: 1,
                            team: 'A',
                          );
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
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                            buttonNumber: 2,
                            team: 'A',
                          );
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
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                            buttonNumber: 3,
                            team: 'A',
                          );
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
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                            buttonNumber: 1,
                            team: 'B',
                          );
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
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                            buttonNumber: 2,
                            team: 'B',
                          );
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
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                            buttonNumber: 3,
                            team: 'B',
                          );
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
                  BlocProvider.of<CounterCubit>(context).TeamRest();
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
      },
      listener: (context, state) {
      },
    );
  }
}
