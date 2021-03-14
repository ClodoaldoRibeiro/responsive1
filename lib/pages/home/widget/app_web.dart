import 'package:flutter/material.dart';
import 'package:responsive1/pages/home/widget/web_app_bar_responsive_container.dart';

class AppWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(children: [
        Text("Flutter"),
        const SizedBox(
          width: 32,
        ),
        WebAppBarResponsiveContainer(),
        IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        const SizedBox(
          width: 32,
        ),
        SizedBox(
          height: 38,
          child: OutlineButton(
            child: Text("Fazer Login"),
            textColor: Colors.white,
            borderSide: BorderSide(width: 2, color: Colors.white),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        SizedBox(
          height: 40,
          child: RaisedButton(
              child: Text("Cadastre-se"),
              color: Colors.white,
              onPressed: () {}),
        )
      ]),
    );
  }
}
