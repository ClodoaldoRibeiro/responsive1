import 'package:flutter/material.dart';

class CustumResearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blueAccent,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintStyle: TextStyle(color: Colors.white),
          hintText: "Pesquise alguma coisa aqui",
          suffixIcon: IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          )),
    );
  }
}
