import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class AppbarPrincipal extends StatelessWidget implements PreferredSizeWidget {
  const AppbarPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leadingWidth: 250,
        leading: Row(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.red, alignment: Alignment.center),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Início'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.red, alignment: Alignment.center),
              onPressed: () {
                Navigator.pushNamed(context, '/sobre');
              },
              child: const Text('Sobre'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.red, alignment: Alignment.center),
              onPressed: () {
                Navigator.pushNamed(context, '/configuracao');
              },
              child: const Text('Configuração'),
            )
          ],
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
