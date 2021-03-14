import 'package:flutter/material.dart';

class WebAppBarResponsiveContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(
      builder: (context, constraints) {
        print("smallest : ${constraints.smallest}");
        print("biggest: ${constraints.biggest}");
        return Row(
          children: [
            //O container senpre vai preencher o tamanho mínimo
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey[50],
                    border: Border.all(color: Colors.grey[600])),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 4,
                    ),
                    IconButton(
                        color: Colors.grey[500],
                        icon: Icon(Icons.search),
                        onPressed: () {}),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                        isCollapsed: true,
                        border: InputBorder.none,
                        hintText: "Pesquise alguma coisa aqui",
                      )),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 32,
            ),
            if (constraints.maxWidth > 400) ...[
              const SizedBox(
                width: 4,
              ),
              FlatButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  child: Text("Aprender")),
            ],

            if (constraints.maxWidth > 500)
              FlatButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  child: Text(
                    "Flutter",
                  )),
          ],
        );
      },
    ));
  }
}
