import 'package:flutter/material.dart';
import 'package:navigator/product_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var nameController =TextEditingController();
  var emailController =TextEditingController();
  var ageController =TextEditingController();
  var phonenoController=TextEditingController();
  var passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          TextField(
         controller:nameController,
            decoration:InputDecoration(hintText: "Enter Name",border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          TextField(
            controller:emailController,
            decoration:InputDecoration(hintText: "Enter Email",border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
          ), TextField(
            controller:ageController,
            decoration:InputDecoration(hintText: "Enter Age",border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
          ), TextField(
            controller:phonenoController,
            decoration:InputDecoration(hintText: "Enter Phone Number",border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          TextField(
            controller:passwordController,
            decoration:InputDecoration(hintText: "Enter Password",border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          Image.asset("image/tinku.jpg"),
          Center(
            child: ElevatedButton(onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(name: nameController.text,age: ageController.text,email: emailController.text,phoneno: phonenoController.text,password: passwordController.text,),));
            }, child: Text("Go To Product Screen"),),
          ),
        ],
      ),
    ));
  }
}
