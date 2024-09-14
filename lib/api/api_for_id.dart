import 'package:http/http.dart' as http;

class ApiForId {
  static const baseUrl = "http://http://localhost:56766/";

  static Future<dynamic> login(String username, String password) async {
    final url = Uri.parse('$baseUrl/api/auth/login');

    var request = http.MultipartRequest('POST', url);
    request.fields['username'] = username;
    request.fields['password'] = password;
    var response = await request.send();

    return response;
  }
}
