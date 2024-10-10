
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  var bgColor = const Color.fromRGBO(241, 241, 241, 1);
  var myAccent = const Color.fromRGBO(161,195,77, 1);
  var lightBorderColor = const Color.fromARGB(79, 207, 201, 201);
  
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: bgColor,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Scaffold(
            backgroundColor: bgColor,
            appBar: AppBar(
              backgroundColor: bgColor,
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: lightBorderColor, width: 2),
                ),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: Icon(Icons.arrow_back_ios, size: 20,),
                  ),
                ),
              ),
            ),
            body: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(5, 25, 5, 25),
                  child: Text("Welcome back! Glad to see you, Again!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                TextField(
                  decoration: InputDecoration(
                    // suffixIcon: Icon(Icons.abc),
                    labelText: "Enter your email",
                    labelStyle: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.bold),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide( color: myAccent, width: 2 )
                    ),
                    enabledBorder: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10), 
                      borderSide: BorderSide( color: lightBorderColor, width: 2 )
                    )
                  ),
                ),
                const SizedBox(height: 18,),
                TextField(
                  
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.remove_red_eye_rounded),
                    suffixIconColor: Colors.grey.shade600,  
                    labelText: "Enter your password",
                    labelStyle: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.bold),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide( color: myAccent, width: 2 )
                    ),
                    enabledBorder: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10), 
                      borderSide: BorderSide( color: lightBorderColor, width: 2 )
                    )
                  ),
                ),
                const SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [  
                    TextButton(onPressed: (){}, child: Text("Forgot Password?", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade600),))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 40, 39, 39),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      width: double.infinity,
                      height: 55,
                      child: const Center(child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 16), textAlign: TextAlign.center,)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("-------------------------------", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade300),),
                    Text(" Or Login with ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade600),),
                    Text("-------------------------------", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade300),),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: lightBorderColor, width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset("assets/images/fb_logo.png"),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Flexible(
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: lightBorderColor, width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset("assets/images/google_logo.png"),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Flexible(
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: lightBorderColor, width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.apple, size: 35,),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?", style: TextStyle(fontWeight: FontWeight.bold),),
                      TextButton(onPressed: (){}, 
                        child: Text("Register Now", style: TextStyle(color: myAccent, fontWeight: FontWeight.bold, 
                          decoration: TextDecoration.underline, decorationColor: myAccent, ),)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}