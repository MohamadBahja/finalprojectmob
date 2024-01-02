import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeliveryForm extends StatefulWidget {
  @override
  _DeliveryFormState createState() => _DeliveryFormState();
}

class _DeliveryFormState extends State<DeliveryForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _pizzaQuantityController = TextEditingController();
  final TextEditingController _burgerQuantityController = TextEditingController();
  final TextEditingController _saladQuantityController = TextEditingController();
  final TextEditingController _drinksQuantityController = TextEditingController();
  final TextEditingController _friesQuantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Delivery Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildInput('Name', _nameController),
              buildInput('Email', _emailController),
              buildInput('Number', _numberController),
              buildInput('Location', _locationController),
              buildInput('Pizza Quantity', _pizzaQuantityController),
              buildInput('Burger Quantity', _burgerQuantityController),
              buildInput('Salad Quantity', _saladQuantityController),
              buildInput('Drinks Quantity', _drinksQuantityController),
              buildInput('Fries Quantity', _friesQuantityController),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _submitForm();
                },
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.red,
    );
  }

  Widget buildInput(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            controller: controller,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              contentPadding:
              EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              border: InputBorder.none,
              hintText: 'Enter $label',
              hintStyle: TextStyle(color: Colors.black54),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  void _submitForm() {
    String name = _nameController.text;
    String email = _emailController.text;
    String number = _numberController.text;
    String location = _locationController.text;
    String pizzaQuantity = _pizzaQuantityController.text;
    String burgerQuantity = _burgerQuantityController.text;
    String saladQuantity = _saladQuantityController.text;
    String drinksQuantity = _drinksQuantityController.text;
    String friesQuantity = _friesQuantityController.text;

    http.post(
      Uri.parse(
          "https://foodorederingbahja.000webhostapp.com/deliveryform.php"),
      body: {
        'name': name,
        'email': email,
        'number': number,
        'location': location,
        'pizzaQuantity': pizzaQuantity,
        'burgerQuantity': burgerQuantity,
        'saladQuantity': saladQuantity,
        'drinksQuantity': drinksQuantity,
        'friesQuantity': friesQuantity,
      },
    ).then((response) {
      print("Response: ${response.body}");
    });

    Navigator.pop(context);
  }
}





















