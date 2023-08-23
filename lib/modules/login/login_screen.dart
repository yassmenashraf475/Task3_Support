import 'package:flutter/material.dart';
import 'package:task_support_3/layout/home_layout.dart';
import 'package:task_support_3/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var emailController = TextEditingController();
  var personController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey =GlobalKey<FormState>();

  bool isPassword = true;
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
          child:Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 50,
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Text(
                        'talabat',
                        style: TextStyle(
                          fontSize: 75.0,
                            fontFamily: "fonttry",
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[800],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Sign up for free',
                        style: TextStyle(
                          fontSize: 20.0,
                            //fontFamily: "fonttry",
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      defaultFormField(
                        controller: personController,
                        label: 'Name',
                        prefix: Icons.person,
                        type: TextInputType.name,
                        validate: (String value){
                          if(value.isEmpty){
                            return 'Name must not be empty';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      defaultFormField(
                        controller: emailController,
                        label: 'Email',
                        prefix: Icons.email,
                        type: TextInputType.emailAddress,
                        validate: (String value){
                          if(value.isEmpty){
                            return 'email must not be empty';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      defaultFormField(
                        controller: passwordController,
                        label: 'Password',
                        prefix: Icons.lock,
                        suffix: isPassword ? Icons.visibility_off: Icons.visibility,
                        isPassword: isPassword,
                        type: TextInputType.visiblePassword,
                        suffixPressed: (){
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                        validate: (String value){
                          if(value.isEmpty){
                            return 'password must not be empty';
                          }
                          return null;
                        },
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: rememberMe,
                            onChanged: (value) {
                              setState(() {
                                rememberMe = value!;
                              });
                            },
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      defaultButton(
                        colorButton: Colors.orange.shade800,
                        text: 'Create Account',
                        function: (){
                          if(formKey.currentState!.validate()){
                            Navigator.pushReplacement(context,
                            MaterialPageRoute(
                              builder: (context) => HomeLayout(),));
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}
