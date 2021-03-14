import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive1/breakpiont.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantages({String title, String subtitle}) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            children: [
              Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget buildVerticalAdvantages({String title, String subtitle}) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= MOBILE_BREAK_POINT)
          return Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 16,
              spacing: 10,
              children: [
                buildHorizontalAdvantages(
                    title: "+45.000 alunos", subtitle: "Didatica garantida"),
                buildHorizontalAdvantages(
                    title: "+45.000 alunos", subtitle: "Didatica garantida"),
                buildHorizontalAdvantages(
                    title: "+45.000 alunos", subtitle: "Didatica garantida"),
              ],
            ),
          );

        return Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: Row(
              children: [
                Expanded(
                  child: buildVerticalAdvantages(
                      title: "+45.000 alunos", subtitle: "Didatica garantida"),
                ),
                const SizedBox(width: 4,),
                Expanded(
                  child: buildVerticalAdvantages(
                      title: "+45.000 alunos", subtitle: "Didatica garantida"),
                ),
                const SizedBox(width: 4,),
                Expanded(
                  child: buildVerticalAdvantages(
                      title: "+45.000 alunos", subtitle: "Didatica garantida"),
                ),
              ],
            ));
      },
    );
  }
}
