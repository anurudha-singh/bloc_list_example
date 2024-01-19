import 'package:bloc_list_example/utils/update_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('This is my second screen'),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    // itemCount: provider.numbersList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(
                        'Second screen',
                        style: TextStyle(fontSize: 25),
                      );
                    })),
            ElevatedButton(
                onPressed: () {
                  UpdateTheList.toUpdateTheList();
                },
                child: const Text('Add')),
          ],
        ));
  }
}
