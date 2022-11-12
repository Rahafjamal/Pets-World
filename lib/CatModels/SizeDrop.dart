import 'package:flutter/material.dart';

class SizeDrop extends StatefulWidget {
  SizeDrop(
      {super.key,
      required this.FilterData,
      required this.Data,
      required this.Filter,
      required this.value,
      required this.params,
      required this.type});
  var Data;
  List Filter;
  String value;
  String type;
  String params;
  Function FilterData;

  @override
  State<SizeDrop> createState() => _SizeDropState();
}

class _SizeDropState extends State<SizeDrop> {

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: widget.value,
      items: widget.Filter.map((e) => DropdownMenuItem(
          value: e,
          child: Text(
            "$e",
            style: TextStyle(
                fontSize: 10,
                color: Colors.brown[700],
                fontWeight: FontWeight.bold,
                fontFamily: 'DancingScript'),
          ))).toList(),
      onChanged: ((val) {
        setState(() {
          widget.value = val.toString();
        });
        widget.FilterData(widget.params, val.toString());
        
      }),
    );
  }
}
