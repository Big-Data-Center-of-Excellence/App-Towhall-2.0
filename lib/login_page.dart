import 'package:flutter/material.dart';
import 'package:login_app/details_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/head.png',height: 300,width: 450,fit: BoxFit.fitHeight),
            const Text("Welcome to\n  SeekJob",style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),), 
            const Text('Big Data centre of excellence',style : TextStyle(
              color: Colors.grey,
              fontSize: 16
            )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: (){},style:
              ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              fixedSize: const Size(300,60),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white
              ), child: const Text("Login",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsPage()));
            },style:
              ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              fixedSize: const Size(300,60),
                backgroundColor: Colors.white38,
                foregroundColor: Colors.black
              ), child: const Text("Register",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),),
          ],
        ),
    );
  }
}
