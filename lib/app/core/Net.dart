import 'package:http/http.dart' as http;
class Net{
  static void post(String url, Map<String,String> params) async{
    http.post(Uri.parse(url));
    //await http.post(Uri.parse(url),params);
  }
}