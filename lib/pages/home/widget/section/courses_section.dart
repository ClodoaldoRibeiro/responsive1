import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive1/breakpiont.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300, crossAxisSpacing: 16, mainAxisSpacing: 16),
          itemCount: 20,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: constraints.maxWidth >= MOBILE_BREAK_POINT ? 0 : 16),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.redAccent,
            );
          },
        );
      },
    );
  }
}
