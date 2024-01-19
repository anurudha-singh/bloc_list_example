import 'dart:ffi';

import 'package:bloc_list_example/bloc/numberlist_bloc.dart';
import 'package:bloc_list_example/screens/second_screen.dart';
import 'package:bloc_list_example/utils/update_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstaScreenState();
}

class _FirstaScreenState extends State<FirstScreen> {
  @override
  void initState() {
    context
        .read<NumberlistBloc>()
        .add(ListUpdatedEvent()); // we have added a Loaded event  the bloc
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('At First Screen'),
          backgroundColor: Colors.blue,
        ),
        body: BlocBuilder<NumberlistBloc, NumberlistState>(
          builder: (context, state) {
            print('Current state is ${state} ****');
            return Center(
              child: Column(children: [
                SizedBox(height: MediaQuery.of(context).size.height * 25 / 100),
                if (state is NumberlistUpdatedState)
                  Text(
                    // 'Text',
                    state.numbersList[UpdateTheList.numbersList.length - 1]
                        .toString(),
                    style: const TextStyle(fontSize: 25),
                  ),
                SizedBox(height: MediaQuery.of(context).size.height * 10 / 100),
                ElevatedButton(
                    onPressed: () {
                      print('clicked');

                      context.read<NumberlistBloc>().add(ListUpdatedEvent());
                    },
                    child: const Text('Add')),
                // if (state is NumberlistUpdatedState)
                //   Expanded(
                //     child: ListView.builder(itemBuilder: (
                //       BuildContext context,
                //       int index,
                //     ) {
                //       return Text(
                //         state.numbersList[index].toString(),
                //         style: const TextStyle(fontSize: 25),
                //       );
                //     }),
                //   ),
                SizedBox(
                  height: 300,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondScreen()),
                      );
                    },
                    child: const Text('Click here'))
              ]),
            );
          },
        ),
      ),
    );
  }
}
