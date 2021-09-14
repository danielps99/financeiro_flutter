import 'package:financeiro_flutter/widget/appbar_principal.dart';
import 'package:flutter/material.dart';


class SobrePage extends StatelessWidget {
  const SobrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const AppbarPrincipal(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Página sobre o sistema financeiro',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
