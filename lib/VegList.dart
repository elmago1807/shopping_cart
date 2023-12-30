
import 'package:flutter/material.dart';

import 'FruList.dart';
import 'check.dart';
import 'constants.dart';


class VegList extends StatefulWidget {
  const VegList({Key? key}) : super(key: key);
  @override
  State<VegList> createState() => _VegListState();
}

class _VegListState extends State<VegList> {
  List<String> currentState = Constants.veg.keys.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Choose Vegetables')),
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
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FruList()));
            },
            child: const Text('Next', style: TextStyle(color: Colors.purple)),
          ),

        ],
      ),
    );
  }
}
