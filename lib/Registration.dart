import 'package:flutter/material.dart';
//import 'package:police/model/item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
 
class Regstraion extends StatefulWidget {
  const Regstraion({super.key});

  @override
  State<Regstraion> createState() => _regstraion();
}

class _regstraion extends State<Regstraion> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _FirstNameController = TextEditingController();
  final TextEditingController _LastNameController = TextEditingController();
  final TextEditingController _EmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
    String? _validateFname(String? value) {
    if (value == null || value.isEmpty) {
      return 'First Name is required';
    }
    return null;
  }

  void _submitForm() {
    print('yahya1');
    if (_formKey.currentState?.validate() ?? false) {
      print('yahya');
      print('yahya2');

      // Perform registration logic here
      String Fname = _FirstNameController.text;
      String password = _passwordController.text;
      print('Username: $Fname, Password: $password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Registration"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
               key: _formKey,
              child: Column(
               
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _FirstNameController,
                    decoration:const InputDecoration(
                      labelText: 'Fisrt Name',
                    ),
                    validator: _validateFname,
                  ),
              const    SizedBox(height: 16.0),
                  TextFormField(
                    controller: _LastNameController,
                    decoration: const InputDecoration(
                      labelText: 'Last Name',
                    ),
                  ),
                const  SizedBox(height: 16.0),
                  TextFormField(
                    controller: _EmailController,
                    decoration: const InputDecoration(
                      labelText: 'Emale',
                    ),
                  ),
                 const SizedBox(height: 16.0),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration:const  InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                 const SizedBox(height: 16.0),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Confiram Password',
                    ),
                  ),
               const   SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child:const Text('Register'),
                  ),
                 const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          size: 40,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
