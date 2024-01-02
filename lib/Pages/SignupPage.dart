import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'LoginPage.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signUp(
      String fullName,
      String email,
      String phoneNumber,
      String password,
      BuildContext context,
      ) async {
    final response = await http.post(
      Uri.parse('https://foodorederingbahja.000webhostapp.com/signup.php'),
      body: {
        'fullname': fullName,
        'email': email,
        'phonenumber': phoneNumber,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      if (responseJson['success']) {
        print('Signup successful: ${responseJson['message']}');
        // You can navigate to the login page or perform other actions here
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      } else {
        // Show an error message
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text(
                responseJson['message'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      }
    } else {
      print('Failed to signup. Error: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 60.0, 16.0, 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 0.0),
              Image.asset(
                'assets/logo.jpg', // Replace with the actual image path
                height: 120.0,
              ),
              TextField(
                controller: fullNameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  icon: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                  labelStyle: TextStyle(color: Colors.red),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                  labelStyle: TextStyle(color: Colors.red),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: phoneNumberController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  icon: Icon(
                    Icons.phone,
                    color: Colors.red,
                  ),
                  labelStyle: TextStyle(color: Colors.red),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  icon: Icon(
                    Icons.lock,
                    color: Colors.red,
                  ),
                  labelStyle: TextStyle(color: Colors.red),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  String fullName = fullNameController.text;
                  String email = emailController.text;
                  String phoneNumber = phoneNumberController.text;
                  String password = passwordController.text;

                  // Validate the inputs
                  if (fullName.isEmpty ||
                      email.isEmpty ||
                      phoneNumber.isEmpty ||
                      password.isEmpty) {
                    // Show an error message if fields are not filled
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Text(
                            "Please fill in all fields.",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "OK",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    // Call the signup function
                    signUp(fullName, email, phoneNumber, password, context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}