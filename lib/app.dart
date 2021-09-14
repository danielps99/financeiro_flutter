import 'package:financeiro_flutter/pages/configuracao_page.dart';
import 'package:financeiro_flutter/pages/home_page.dart';
import 'package:financeiro_flutter/pages/sobre_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // appBarTheme: new AppBarTheme(color: Colors.grey[50]),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/sobre': (context) => const SobrePage(),
        '/configuracao': (context) => const ConfiguracaoPage(),
      },
    );
  }
}
