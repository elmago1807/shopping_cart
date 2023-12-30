import 'package:flutter/material.dart';
import 'package:shopping_cart/constants.dart';


class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  final array = select.getArray();
  int finalPrice = 0;

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < array.length; i++) {
      finalPrice += select.getPrice(array[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Bill')),
      ),
      body: Column(
        children: [
          const Text('Items Summary', style: TextStyle(color: Colors.black),),

          Expanded(
            child: ListView.builder(
              itemCount: array.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(array[index], style: const TextStyle(color: Colors.black),),

                    Text(select.getPrice(array[index]).toString(), style: const TextStyle(color: Colors.black),)
                  ],
                );
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Total', style: TextStyle(color: Colors.black),),

              Text(finalPrice.toString(), style: const TextStyle(color: Colors.black),)
            ],
          )
        ],
      ),
    );
  }
}
