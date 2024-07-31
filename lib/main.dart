import 'package:flutter/material.dart';
import 'package:practicalexam/cart.dart';
import 'package:practicalexam/detail.dart';
import 'package:practicalexam/home.dart';
void main()
{
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        ('/'):(context)=>const Homepage(),
        ('/detail'):(context)=>const Detailpage(),
        ('/cart'):(context)=>const Cartpage(),
      },
    );
  }
}
