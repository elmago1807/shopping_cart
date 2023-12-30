import 'package:flutter/material.dart';

import 'Bill.dart';
import 'check.dart';
import 'constants.dart';


class FruList extends StatefulWidget {
  const FruList({Key? key}) : super(key: key);
  @override
  State<FruList> createState() => _FruListState();
}

class _FruListState extends State<FruList> {
  List<String> currentState = Constants.fru.keys.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Choose Fruits')),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: currentState.length,
              itemBuilder: (context, index) {
                return CheckBox(object: currentState[index]);
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Bill()));
            },
            child: const Text('Next', style: TextStyle(color: Colors.purple)),
          ),

        ],
      ),
    );
  }
}
