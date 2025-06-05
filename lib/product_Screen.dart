import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  final String? name;
  final String? email;
  final String? age;
  final String? phoneno;
  final String? password;
  const ProductScreen({super.key,this.name,this.email,this.age,this.phoneno,this.password});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
         body: Column(
          children: [
            Text("${widget.name}"),
            Text("${widget.email}"),
            Text("${widget.age}"),
            Text("${widget.phoneno}"),
            Text("${widget.password}"),

            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("Go Back")),
            Container(child: InkWell(
              onTap:(){

              },
              child: Center(child: Text("Product Screen"),),
            ),)
          ],




         ),
        )
    );
  }
}
