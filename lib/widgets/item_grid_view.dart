import 'package:flutter/material.dart';
import '../models/Product.dart';

class ContainerGridClass extends StatelessWidget {
  // final String text;
  // final colorBackgraund;
  // final String pathImage;
  final Product product;
  //final Function press;
  final press;

  const ContainerGridClass({
    Key? key, required this.product, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.topCenter,
        
        decoration: BoxDecoration(
          border: Border.all(width: 5, color: product.color),
          borderRadius: const BorderRadius.all(Radius.circular(60)),
          image: DecorationImage(
            image: Image.asset(product.image).image,
            fit: BoxFit.scaleDown,
            
          ),
        ),
        padding: const EdgeInsets.all(8),
   
      ),
    );
  }
}
