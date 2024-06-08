import 'package:flutter/material.dart';

class textF extends StatefulWidget {
  void Function(String) changin;
  String label;
  bool ispass;
  textF({super.key, required this.changin,required this.label,required this.ispass});

  @override
  State<textF> createState() => _textFState();
}

class _textFState extends State<textF> {
    late TextEditingController _control = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: TextFormField(
        onChanged: widget.changin,
        controller: _control,
        obscureText:widget.ispass ,
        
        decoration: InputDecoration(
          labelText: widget.label ,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
