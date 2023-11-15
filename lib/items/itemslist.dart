import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List Barang'),
          backgroundColor: Colors.tealAccent,
        ),
        body: ListView(
          children: const <Widget>[
            Items(content: "Barang A", price: "Rp. 10.000"),
            Items(content: "Barang B", price: "Rp. 15.000"),
            Items(content: "Barang C", price: "Rp. 230.000"),
            Items(content: "Barang D", price: "Rp. 20.000"),
            Items(content: "Barang E", price: "Rp. 130.000"),
            Items(content: "Barang F", price: "Rp. 10.000"),
            Items(content: "Barang G", price: "Rp. 5.000"),
            Items(content: "Barang H", price: "Rp. 90.000"),
            Items(
              content: "Barang I",
            ),
            Items(
              content: "Barang J",
            ),
          ],
        ));
  }
}

class Items extends StatelessWidget {
  final String content;
  final String price;
  const Items({super.key, required this.content, this.price = "FREE"});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey.shade600, spreadRadius: 1, blurRadius: 2)
        ],
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                content,
                style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                price,
                style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Icon(Icons.remove_shopping_cart_outlined),
          )
        ],
      ),
    );
  }
}
