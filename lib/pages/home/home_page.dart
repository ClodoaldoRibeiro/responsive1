import 'package:flutter/material.dart';
import 'package:responsive1/pages/drawe/drawer_mobile.dart';
import 'package:responsive1/pages/home/widget/app_mobile.dart';
import 'package:responsive1/pages/home/widget/app_web.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print("smallest : ${constraints.smallest}");
        print("biggest: ${constraints.biggest}");

        return Scaffold(
            drawer: constraints.maxWidth < 800 ? DrawerMobile() : null,
            appBar: constraints.maxWidth < 800
                ? PreferredSize(
                    child: AppMobile(),
                    preferredSize: Size(double.infinity, 56),
                  )
                : PreferredSize(
                    child: AppWeb(),
                    preferredSize: Size(double.infinity, 72),
                  ));
      },
    );
  }
}
