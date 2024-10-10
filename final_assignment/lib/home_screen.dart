import 'package:final_assignment/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var myAccent = const Color.fromRGBO(161,195,77, 1);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(227,227,227,1),
        body: Stack(
          children: [
            Image.asset("assets/images/plant2.png", fit: BoxFit.cover,),
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                      },
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
                  
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(192, 255, 255, 255),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black, style: BorderStyle.solid, width: 1)
                      ),
                      width: double.infinity,
                      height: 55,
                      child: const Center(child: Text("Register", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: TextButton(onPressed: (){}, 
                      child: Text("Continue as a guest", style: TextStyle(color: myAccent, fontWeight: FontWeight.bold, 
                        decoration: TextDecoration.underline, decorationColor: myAccent, ),)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}