import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "x",
      "picture": "images/products/x.jpg",
      "price": 150,
      "size": "7",
      "color": "gold",
      "quantity": 1,
    },
    {
      "name": "y1",
      "picture": "images/products/y1.jpg",
      "price": 200,
      "size": "L",
      "color": "Red",
      "quantity": 1 ,
    },
    {
      "name": "x2",
      "picture": "images/products/x2.jpg",
      "price": 150,
      "size": "L",
      "color": "Black",
      "quantity": 1 ,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: new Image.asset(cart_prod_picture,width: 80.0,height: 80.0,),
          title: new Text(cart_prod_name),
          subtitle: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: new Text("Size:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(
                      cart_prod_size,
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                    child: new Text("Color:"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text(
                      cart_prod_color,
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              new Container(
                alignment: Alignment.topLeft,
                child: new Text(
                  "\$${cart_prod_price}",
                  style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 17.0),
                ),
              )
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: new IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
              ),
              Expanded(child: Text("${cart_prod_qty}",style: TextStyle(fontWeight: FontWeight.bold),)),
              Expanded(child: new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})),
            ],
          ),
        ));
  }
}
