import 'package:flutter/material.dart';
import 'package:practicalexam/utils/global.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Discover',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushReplacementNamed('/cart');
                          });
                        },
                        child: const Icon(Icons.shopping_cart, color: Colors.red)),
                  ),
                ],
              ),
            ),
            Wrap(
              children: [
                ...List.generate(
                    product.length,
                    (index) => GestureDetector(
                          onTap: () {
                            selectedindex = index;
                            cart.add(product[index]);
                            Navigator.of(context).pushNamed('/detail');
                          },
                          child: productmethod(
                              name: product[index]['name'],
                              price: product[index]['price'],
                              img: product[index]['img']),
                        ))
              ],
            )
          ],
        ),
      ),
    );
  }

  Stack productmethod(
      {required String name, required var price, required var img}) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(15, 15, 10, 0),
          height: 220,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, spreadRadius: 0.5, blurRadius: 8)
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$name',
                      style: const TextStyle(fontSize: 15),
                    ),
                    const Text(
                      '4.3',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Text(
                  '\$ $price/-',
                  style: const TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(15, 15, 10, 0),
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(img)),
          ),
        ),
      ],
    );
  }
}
