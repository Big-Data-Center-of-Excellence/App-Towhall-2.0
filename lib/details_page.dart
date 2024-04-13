import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final branch = const [
    DropdownMenuEntry(value: 'cse', label: 'CSE'),
    DropdownMenuEntry(value: 'it', label: 'IT'),
    DropdownMenuEntry(value: 'me', label: 'ME'),
    DropdownMenuEntry(value: 'ece', label: 'ECE'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/hero.png',fit: BoxFit.cover,),
               const  Text('Student Details',style: TextStyle(
                  fontSize: 30,
                 fontWeight: FontWeight.bold
                ),),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Student No.',
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownMenu(width: 390,dropdownMenuEntries: branch,label: const Text('Branch'),),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){},style:
                ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    fixedSize: const Size(400,70),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white
                ), child: const Text("Submit",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
