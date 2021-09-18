import 'dart:io';

import 'package:financeiro_flutter/widget/appbar_principal.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

void fetchAlbum() async {
    try {
      // https://github.com/flutterchina/dio/blob/master/example/options.dart
        var dio = Dio(BaseOptions(
          baseUrl: 'http://localhost:8888/',
          connectTimeout: 5000,
          receiveTimeout: 100000,
          headers: {
            'cliente': 'b787a4ab-30e3-46b6-927b-3660f75cd9df'
          },
          contentType: Headers.jsonContentType,
          responseType: ResponseType.plain,
        ));

        String url = 'api/query/TitulosAgendadosDescricaoValorVencimentoOperacao/1';
        Response response = await dio.post(
            url,
            data: {},
            options: Options(
              contentType: Headers.jsonContentType,
            ),
          );
      print(response);
      
    } on DioError catch (e) {
      debugPrint("MEUEROORO: "+e.message);
    }
  }
  

  @override
  Widget build(BuildContext context) {
fetchAlbum();
    
    return Scaffold(
      appBar:  const AppbarPrincipal(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'HOME:',
            ),
            Text(
              'counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            new Flexible(child: createListView())
          ],
        ),
      ),
    );
  }

  Widget createListView(){
    return  ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
      var values = [];
      return Column(
        children: <Widget>[
          ListTile(
            title: Column(
              children: <Widget>[
                          Text(
              'Página pagar' + index.toString(),
              style: Theme.of(context).textTheme.bodyText1,
            ),
              ]
            )
            

          )
        ],
      );
      }
      );

  }
}
