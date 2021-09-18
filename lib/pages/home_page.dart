import 'dart:io';

import 'package:financeiro_flutter/entity/response_page.dart';
import 'package:financeiro_flutter/entity/titulo.dart';
import 'package:financeiro_flutter/widget/appbar_principal.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
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
          // responseDecoder: ResponseDecoder.,
          headers: {
            'cliente': 'b787a4ab-30e3-46b6-927b-3660f75cd9df'
          },
          contentType: Headers.jsonContentType,
          responseType: ResponseType.plain,
        ));

        // String url = 'api/query/TitulosAgendadosDescricaoValorVencimentoOperacao/1';
        String url = 'api/titulo/13ac5d45-93ea-4aab-acd4-3cac6240510d';
        // Response<ResponsePage<Titulo>> response = await dio.post(
          Response response = await dio.get(
            url,
            // data: {},
            options: Options(
              contentType: Headers.jsonContentType,
            ),
          );
          final jsonData = json.decode(response.data);
          // Titulo.fromJson(response.data);
          // print(Titulo.fromJson(response.data));
      // print(jsonData['page']);
      // print("fdsfsfsfsfsd");



      // DE UM FUNCIONAA String url = 'api/titulo/13ac5d45-93ea-4aab-acd4-3cac6240510d';
      Titulo t = Titulo.fromJson(jsonData);
      print(t.id);
      print(t.descricao);
      print(t.valor);
      print(t.vencimento);
      
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
            Flexible(child: createListView())
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
