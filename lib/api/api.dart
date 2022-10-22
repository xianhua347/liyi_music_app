import 'package:http/http.dart' as http;
const String baseURL = "https://yilil-music-9443-5-1308558358.sh.run.tcloudbase.com/";

Future<String> sayHello() async {
  final response = await http
      .get(Uri.parse(baseURL+"hello"));

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load ...');
  }
}