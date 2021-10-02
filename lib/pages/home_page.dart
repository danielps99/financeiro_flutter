import 'package:financeiro_flutter/entity/response_page.dart';
import 'package:financeiro_flutter/entity/titulo.dart';
import 'package:financeiro_flutter/widget/appbar_principal.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<ResponsePage<Titulo>> fetchAlbum() async {
    try {
      // https://github.com/flutterchina/dio/blob/master/example/options.dart
      var dio = Dio(BaseOptions(
        baseUrl: 'http://localhost:8888/',
        connectTimeout: 5000,
        receiveTimeout: 100000,
        // responseDecoder: ResponseDecoder.,
        headers: {'cliente': 'b787a4ab-30e3-46b6-927b-3660f75cd9df'},
        contentType: Headers.jsonContentType,
        responseType: ResponseType.plain,
      ));

      String url =
          'api/query/TitulosAgendadosDescricaoValorVencimentoOperacao/1';
      // String url = 'api/titulo/13ac5d45-93ea-4aab-acd4-3cac6240510d';
      Response response = await dio.post(
        // Response response = await dio.get(
        url,
        data: {},
        options: Options(
          contentType: Headers.jsonContentType,
        ),
      );
      final jsonData = json.decode(response.data);

      ResponsePage<Titulo> r = ResponsePage.fromJson(jsonData);
      return r;
    } on DioError catch (e) {
      debugPrint("MEUEROORO: " + e.message);
      throw Exception("deu erro" + e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarPrincipal(),
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

  formatarData(data) {
    return DateFormat('dd/MM/y').format(data);
  }

  formatarValor(valor) {
    return NumberFormat.currency(locale: "pt_BR", symbol: "R\$").format(valor);
  }

  Widget createListView() {
    return FutureBuilder(
        future: fetchAlbum(),
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            ResponsePage<Titulo> values = snapshot.data;
            return ListView.builder(
                itemCount: values.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      color:
                          index % 2 == 0 ? Colors.grey[200] : Colors.grey[50],
                      padding: EdgeInsets.only(bottom: 3, top: 3),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  values.data[index].descricao.toString())),
                          Row(
                            children: [
                              Text(formatarData(values.data[index].vencimento)),
                              Spacer(),
                              Text(formatarValor(values.data[index].valor)),
                            ],
                          )
                        ],
                      ));
                });
          }
        });
  }
}
