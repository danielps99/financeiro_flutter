import 'package:financeiro_flutter/widget/appbar_principal.dart';
import 'package:flutter/material.dart';


class ConfiguracaoPage extends StatelessWidget {
  const ConfiguracaoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const AppbarPrincipal(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Página de configurações',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
