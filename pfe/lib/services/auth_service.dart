import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  // URL of your Django API
  final String baseUrl = 'http://127.0.0.1:8000/auth';  // Change to your Django URL

  // Signup function
  Future<void> signup(String username, String email, String password) async {
    final url = Uri.parse('$baseUrl/signup/');  // Complete URL for signup

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},  // Set the content type to JSON
      body: jsonEncode({
        'username': username,
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      print('Signup successful: ${response.body}');
    } else {
      print('Error: ${response.body}');
    }
  }

  // Login function
  Future<void> login(String username, String password) async {
    final url = Uri.parse('$baseUrl/login/');  // Complete URL for login

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},  // Set the content type to JSON
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      print('Login successful: ${response.body}');
    } else {
      print('Error: ${response.body}');
    }
  }
}
