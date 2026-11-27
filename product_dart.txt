import 'package:flutter/material.dart';
import 'package:flutter_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "x",
      "picture": "images/products/x.jpg",
      "old_price": 250,
      "price": 150,
    },
    {
      "name": "y",
      "picture": "images/products/y.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "z",
      "picture": "images/products/z.jpg",
      "old_price": 300,
      "price": 150,
    },
    {
      "name": "x1",
      "picture": "images/products/x1.jpg",
      "old_price": 250,
      "price": 150,
    },
    {
      "name": "y1",
      "picture": "images/products/y1.jpg",
      "old_price": 500,
      "price": 200,
    },
    {
      "name": "z1",
      "picture": "images/products/z1.jpg",
      "old_price": 300,
      "price": 150,
    },
    {
      "name": "x2",
      "picture": "images/products/x2.jpg",
      "old_price": 250,
      "price": 150,
    },
    {
      "name": "y2",
      "picture": "images/products/y2.jpg",
      "old_price": 600,
      "price": 450,
    },
    {
      "name": "z2",
      "picture": "images/products/z2.jpg",
      "old_price": 1000,
      "price": 500,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
            tag: prod_name,
            child: Material(
              child: InkWell(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  //here we are passing product info to product_details(one of the page)
                    builder: (context) => new ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_picture,
                    ))),
                child: GridTile(
                    footer: Container(
                      color: Colors.white70,
                      child: new Row(children: <Widget>[
                        Expanded(child: new Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)),
                        new Text("\$${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                      ],)
                    ),
                    child: Image.asset(
                      prod_picture,
                      fit: BoxFit.cover,
                    )),
              ),
            )));
  }
}
