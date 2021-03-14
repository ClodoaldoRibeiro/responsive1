import 'package:flutter/material.dart';

class DrawerMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          // UserAccountsDrawerHeader(
          //   accountName: Text("Macoratti"),
          //   accountEmail: Text("macoratti@yahoo.com"),
          //   currentAccountPicture: CircleAvatar(
          //     radius: 30.0,
          //     backgroundImage: NetworkImage(
          //         'http://www.macoratti.net/imagens/pessoas/mac.jpg'),
          //     backgroundColor: Colors.transparent,
          //   ),
          // ),
          ListTile(
              leading: Icon(Icons.star),
              title: Text("Favoritos"),
              subtitle: Text("meus favoritos..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                debugPrint('toquei no drawer');
              }),
          ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Perfil"),
              subtitle: Text("Perfil do usuário..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              leading: Icon(Icons.star),
              title: Text("Favoritos"),
              subtitle: Text("meus favoritos..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                debugPrint('toquei no drawer');
              }),
          ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Perfil"),
              subtitle: Text("Perfil do usuário..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
