import 'package:flutter/material.dart';
import 'constants.dart';

class CheckBox extends StatefulWidget {
  final String object;
  const CheckBox({Key? key, required this.object}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool ifClicked = false;

  @override
  Widget build(BuildContext context) {
    final selPrice = Constants.veg.containsKey(widget.object)
        ? Constants.veg[widget.object]
        :Constants.fru.containsKey(widget.object)
        ? Constants.fru[widget.object]
        : 'Error';
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Checkbox(
          value: ifClicked,
          onChanged: (value) {
            setState(() {
              if (value != null) {
                ifClicked = value;
              }
              if (value == true) {
                select.setMapValue(widget.object);
              }
            });
          },
        ),
        Text(widget.object, style: const TextStyle(color: Colors.black),),
        Text(selPrice.toString(), style: const TextStyle(color: Colors.black),)
      ],
    );
  }
}
