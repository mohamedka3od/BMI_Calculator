import 'package:bmi_calculator/modules/bmi/bmi_screen.dart';
import 'package:bmi_calculator/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                      controller: emailController,
                      prefix: Icons.email,
                      label: 'Email',
                      validate: (value) {
                        if(value!.isEmpty){
                          return 'Email must not be empty';
                        }
                        return null;
                      },
                      type: TextInputType.emailAddress,


                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                 defaultFormField(
                     controller: passwordController,
                     type: TextInputType.visiblePassword,
                     validate: (value){
                       if(value!.isEmpty){
                         return 'Password is too short';
                       }
                       return null;
                     },
                     label: 'Password',
                     prefix: Icons.lock,
                   suffix:  isPassword ? Icons.visibility : Icons.visibility_off,
                   suffixPressed: (){
                       setState(() {
                         isPassword = !isPassword ;
                       });
                   },
                   isPassword: isPassword,

                 ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                      function:(){
                        if(formKey.currentState!.validate()){
                          print(emailController.text);
                          print(passwordController.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>const BmiScreen())
                          );
                        }
                      } ,
                      text: 'login',

                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                          'Don\'t have an account?'
                      ),
                      TextButton(
                        onPressed: (){},
                        child:const Text(
                            'Register Now'
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}