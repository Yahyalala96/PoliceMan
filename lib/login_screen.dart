import 'dart:async';
import 'package:flutter/material.dart';
import 'package:police/main_screen.dart';
import 'package:police/Registration.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool colorChooce = true;
  bool showPassword = false;

  TextEditingController emailController = TextEditingController(text: "abed");
  TextEditingController passwordController = TextEditingController(text: "123");

  @override
  void initState() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      colorChooce = !colorChooce;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              logo(),
              const SizedBox(height: 8),
              const Text(
                "Police App",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.all(10.0),
                child:  Container(
                  color: Colors.white,
                  child:const IconButton(
                    onPressed: null,
                    icon: Icon(
                              FontAwesomeIcons.instagram,
                              size: 40,
                              color: Colors.pink,
                            ),
                  ),
                ),
              ),
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Colors.white,
                  child: const IconButton(
                    onPressed: null,
                    icon:  Icon(
                              FontAwesomeIcons.whatsapp,
                              size: 40,
                              color: Colors.amber,
                            ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Colors.white,
                  child: const IconButton(
                    
                    onPressed: null,
                    
                    icon: Icon(
                              FontAwesomeIcons.squareGooglePlus,
                              size: 40,
                              color: Colors.red,
                            ),
                  ),
                  
                ),
              ),
            ],
          ),

              
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 25, right: 25),
                child: Row(
                  children: [
                    alLawaa7(
                      color: colorChooce ? Colors.red : Colors.blue,
                      borderRadios:
                          const BorderRadius.only(topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),
                    ),
                    alLawaa7(
                      color: colorChooce ? Colors.blue : Colors.red,
                      borderRadios:
                          const BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        emailController.text = "";
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextField(
                  controller: passwordController,
                  obscureText: showPassword,
                  decoration: InputDecoration(
                    labelText: "password",
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    suffixIcon: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(showPassword ? Icons.remove_red_eye : Icons.visibility_off),
                            onPressed: () {
                              showPassword = !showPassword;
                              setState(() {});
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () {
                              passwordController.text = "";
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
               Padding(
                 padding: const EdgeInsets.only(left: 90),
                 child: Row(
                    children: [
                             ElevatedButton(
                    onPressed: () {
                      if (emailController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("please enter your email"),
                        ));
                      } else if (passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("please enter your password"),
                        ));
                      } else {
                        if (emailController.text != "abed" || passwordController.text != "123") {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text("Email or password not valid"),
                          ));
                        } else {
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx) {
                            return const MainScreen();
                          }), (route) => false);
                          // Navigator.of(context)
                          //     .push(MaterialPageRoute(builder: (ctx) {
                          //   return const MainScreen();
                          // }));
                        }
                      }
                    },
                    
                    child: const Text("Login")),
                 
                      ElevatedButton(
                 onPressed: () {
                   Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx) {
                            return const Regstraion();
                          }), (route) => false);
                 },
                 style: ElevatedButton.styleFrom(
                   primary: Colors.green, // Set the button background color
                   onPrimary: Colors.blueGrey, // Set the text color
                 ),
                 child: Text('Register'),
               ),
                    ],
                  ),
               )
                  //Icon(FontAwesomeIcons.facebook, color:Colors.amber, size: 16.0)
                 
   

  

            ],
          ),
          
        ),
      ),
    );
  }

  Widget alLawaa7({required Color color, required BorderRadiusGeometry borderRadios}) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadios,
        ),
      ),
    );
  }

  Widget logo() {
    return Center(
      child: Image.asset(
        "swaar/logo.jpg",
        width: 250,
      ),
    );
  }
}
