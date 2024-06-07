import 'package:flutter/material.dart';

class textF extends StatelessWidget {
  void Function(String) changin;
  String label;
  bool ispass;
  textF({super.key, required this.changin,required this.label,required this.ispass});

  @override
  Widget build(BuildContext context) {
    TextEditingController _control = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: TextFormField(
        onChanged: changin,
        controller: _control,
        obscureText:ispass ,
        decoration: InputDecoration(
          labelText: label ,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
