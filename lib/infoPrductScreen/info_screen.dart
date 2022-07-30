import 'package:flutter/material.dart';
import '../models/Product.dart';
import 'package:f1_store/infoPrductScreen/components/body_info.dart';



class InfoScreen extends StatelessWidget {
  final Product product;

  const InfoScreen({super.key, required this.product});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),

    );
  }

 AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      title: const Text("F1 Store"),
      elevation: 0,
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: const Padding(
            padding: EdgeInsets.only(right: 10),

            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            //ToDo do this
          },
        )
      ],
    

    );
  }



}