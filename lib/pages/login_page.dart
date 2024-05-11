import 'package:flutter/material.dart';
import 'package:flutter_fastfood/components/my_button.dart';
import 'package:flutter_fastfood/components/my_textfield.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  LoginPage({
    super.key,
    required this.onTap,
    });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //logo
          Lottie.asset("images/Animation.json",width: 200,height: 200),
          const SizedBox(height: 15),

          Text(
            "Fast Food Delivery App",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color:Theme.of(context).colorScheme.inversePrimary,
            ),
            ),
          const SizedBox(height: 25),
          MyTextField(controller: emailController, hintText:"Email", obscureText: false),
          MyTextField(controller: passwordController, hintText:"Password", obscureText: true),
          const SizedBox(height: 25),
          MyButton(
            text: "Sign In", 
            onTap: (){}
            ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
            "Not a member?", 
            style: TextStyle(
              fontSize: 16,
              color:Theme.of(context).colorScheme.inversePrimary,
            ),),
            SizedBox(width: 5,),
            GestureDetector(
              onTap: widget.onTap,
              child: Text(
              "Register now", 
              style: TextStyle(
                fontSize: 16,
                color:Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ],)
        ],),
      )
    );
  }
}