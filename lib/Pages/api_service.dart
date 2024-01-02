import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://foodorederingbahja.000webhostapp.com/'; // Replace with your actual URL

  static Future<String> signUp(String fullName, String email, String phoneNumber, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/signup.php'),
      body: {
        'fullname': fullName,
        'email': email,
        'phonenumber': phoneNumber,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to sign up');
    }
  }

  static Future<String> logIn(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login_process.php'),
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to log in');
    }
  }
}