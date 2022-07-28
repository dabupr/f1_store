import 'package:f1_store/models/Product.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
              children: <Widget>[
                Text(product.title,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Expanded(child: Image(image: Image.asset(product.imageP).image))
              ],

//Image.asset(product.image).image,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        //debugPrint('ElevatedButton Clicked');
                      },
                      child: Text('Add to art'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //debugPrint('ElevatedButton Clicked');
                    },
                    child: const Text('Buy now'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(product.description,style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    ),
                  )
                
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
