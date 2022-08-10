import 'package:f1_store/models/Product.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 350,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(100, 100),
              bottomRight: Radius.elliptical(100, 99),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(product.title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Expanded(child: Image(image: Image.asset(product.imageP).image))
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(product.description,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    ),
                  )
                ],
              ),
            ),
            //Flexible(child:  SizedBox(height: 100)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Hero(
                        tag: product.image,
                        child: Image(
                            image: Image.asset(
                                        product.image,
                                      ).image),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      minimumSize: const Size(250, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Buy now'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.blueAccent[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Icon(
                    Icons.shopping_cart,
                    size: 20,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
