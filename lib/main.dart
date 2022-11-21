import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_exampl/cubit/counter_cubit.dart';
import 'package:json_exampl/cubit/counter_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePadg(),
      ),
    );
  }
}

class HomePadg extends StatelessWidget {
  HomePadg({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.add),
              backgroundColor: Colors.orange,
              title: Text(
                'Point Counter',
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Team A',
                              style: TextStyle(fontSize: 32),
                            ),
                            Text(
                              '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                              style: TextStyle(fontSize: 150),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  maximumSize: Size(150, 50)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncrement(team: 'A', buttonNumber: 1);
                              },
                              child: Text(
                                'Add 1 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  maximumSize: Size(150, 50)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncrement(team: 'A', buttonNumber: 2);
                              },
                              child: Text(
                                'Add 2 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  maximumSize: Size(150, 50)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncrement(team: 'A', buttonNumber: 3);
                              },
                              child: Text(
                                'Add 3 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ]),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        indent: 50,
                        endIndent: 50,
                        color: Color.fromARGB(255, 168, 225, 170),
                        thickness: 1,
                      ),
                    ),
                    Column(children: [
                      Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, maximumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 1);
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, maximumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 2);
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, maximumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: 'B', buttonNumber: 3);
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ]),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    minimumSize: Size(150, 45),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                )
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
