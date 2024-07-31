import 'package:flutter/material.dart';
import 'package:practicalexam/utils/global.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Cart page',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...List.generate(
              cart.length,
                  (index) =>
                  ListTile(
                    leading: Image(
                      image: AssetImage(cart[index]['img']),
                      height: 100,
                      width: 50,
                    ),
                    title: Text(
                      cart[index]['name'],
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {});
                          cart.removeAt(index);
                        },
                        child: Icon(
                          Icons.delete,
                          size: 20,
                        )),
                  ),
            ),

          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 10),
          height: 60,
          width: 230,
          decoration: BoxDecoration(
            color: Colors.red.shade500,
            borderRadius: BorderRadius.circular(15),
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).pushReplacementNamed('/cart');
              });
            },
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushReplacementNamed('/home');
                });
              },
              child: Row(
                children: [
                const SizedBox(
                width: 50,
              ),
              Text(
                'Total:',
                style:
                TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    ),)
    ,
    );
  }
}
