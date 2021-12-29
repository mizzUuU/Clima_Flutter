import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkSup{
  final String url;

  NetworkSup(this.url);

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}