import 'package:flutter/material.dart';
import 'package:flutter_fastfood/components/my_button.dart';
import 'package:flutter_fastfood/components/my_textfield.dart';
import 'package:lottie/lottie.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  RegisterPage({
    super.key,
    required this.onTap,
    });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
    final TextEditingController confirmPasswordController=TextEditingController();
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
            "Let's create an account for you",
            style: TextStyle(
              fontSize: 16,
              color:Theme.of(context).colorScheme.inversePrimary,
            ),
            ),
          const SizedBox(height: 25),
          MyTextField(
            controller: emailController, 
            hintText:"Email", 
            obscureText: false),
          MyTextField(
            controller: passwordController, 
            hintText:"Password", 
            obscureText: true),
          MyTextField(
            controller: confirmPasswordController, 
            hintText:"Confirm Password", 
            obscureText: true),
          const SizedBox(height: 25),
          MyButton(
            text: "Sign Up", 
            onTap: (){}
            ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
            "Already have an account?", 
            style: TextStyle(
              fontSize: 16,
              color:Theme.of(context).colorScheme.inversePrimary,
            ),),
            SizedBox(width: 5,),
            GestureDetector(
              onTap: widget.onTap,
              child: Text(
              "Login now", 
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